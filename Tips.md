## Errors while building the example app

In cases where running the command below causes an error and the build fails.
```
flutter build linux --release
```
```
[   +1 ms] /snap/flutter/current/usr/bin/ld: /usr/lib/gcc/x86_64-linux-gnu/11/liblto_plugin.so: error loading plugin:
/snap/flutter/149/usr/bin/../../lib/x86_64-linux-gnu/libc.so.6: version GLIBC_2.33' not found (required by
/usr/lib/gcc/x86_64-linux-gnu/11/liblto_plugin.so)
[        ] collect2: error: ld returned 1 exit status
[  +96 ms] [3/7] Linking CXX shared library plugins/flutter_
```
### Root Cause

This is caused by a mismatch between the GLIBC version bundled inside the Flutter Snap (e.g. 2.31) and the system‑installed GLIBC version (e.g. GLIBC 2.33+ on Ubuntu 22.04 or Fedora). When the Flutter Snap’s internal linker attempts to load external system libraries, it expects symbols like GLIBC_2.33 or newer—but the libc inside the Snap is only version 2.31—resulting in a conflict

 - The Flutter Snap includes its own GLIBC (version 2.31).
 - The system is using a modern GLIBC version (e.g. GLIBC 2.33 or newer), as found in current releases such as Ubuntu 22.04 LTS (which ships with GLIBC 2.35)
 - When LTO (link‑time optimization) is enabled, the internal linker inside the Flutter Snap attempts to invoke external plugins like liblto_plugin.so. These plugins on modern systems require symbols such as GLIBC_2.33 or newer—but the libc bundled inside the Snap is only version 2.31, causing a version mismatch and ultimately a linker failure.[GitHub](https://github.com/flutter/flutter/issues/137036?utm_source=chatgpt.com)

### Solution 
Remove Snap Flutter and install manually
1. Remove the Snap version completely:
   ```
   sudo snap remove flutter
   sudo snap remove --purge flutter
   ```
2. Install Flutter manually using GitHub:
    ```
    git clone https://github.com/flutter/flutter.git -b stable ~/flutter  
    ```
3. Add Flutter to your PATH: 
    ```
    export PATH="$HOME/flutter/bin:$PATH"
    ```
4.  Remove Existing Build Cache and Install Essential Linux Build Tools
    ```
    rm -rf build/
    rm -rf .dart_tool/

    sudo apt update
    sudo apt install clang cmake ninja-build pkg-config libgtk-3-dev
    ```
4. Verify installation
    ```
    which flutter
    flutter --version
    flutter doctor
    ```
