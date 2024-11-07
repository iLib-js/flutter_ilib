cmake_minimum_required(VERSION 3.10)
set(PROJECT_NAME "flutter_ilib")
project(${PROJECT_NAME} LANGUAGES CXX)

# This value is used when generating builds using this plugin, so it must
# not be changed
set(PLUGIN_NAME "flutter_ilib_plugin")

add_library(${PLUGIN_NAME} SHARED
  "flutter_ilib_plugin.cc"
)
apply_standard_settings(${PLUGIN_NAME})
set_target_properties(${PLUGIN_NAME} PROPERTIES
  CXX_VISIBILITY_PRESET hidden)
target_compile_definitions(${PLUGIN_NAME} PRIVATE FLUTTER_PLUGIN_IMPL)
target_include_directories(${PLUGIN_NAME} INTERFACE
  "${CMAKE_CURRENT_SOURCE_DIR}/include")
target_link_libraries(${PLUGIN_NAME} PRIVATE flutter)

# Bundle with quickjs library
# Platform.operatingSystem is Android in flutter-webos release mode
if(CMAKE_BUILD_TYPE STREQUAL "Release")
  set(QUICKJSC_BRIDGE "libfastdev_quickjs_runtime.so")
else()
  set(QUICKJSC_BRIDGE "libquickjs_c_bridge_plugin.so")
endif()

set(BUILD_BUNDLE_DIR "${PROJECT_BINARY_DIR}/bundle")
if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX "${BUILD_BUNDLE_DIR}" CACHE PATH "..." FORCE)
endif()
set(INSTALL_BUNDLE_LIB_DIR "${CMAKE_INSTALL_PREFIX}/lib")


if(CMAKE_CXX_COMPILER_TARGET STREQUAL "aarch64-webos-linux")
  set(QUICKJSC_BRIDGE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/shared/aarch64/libquickjs_c_bridge_plugin.so")
else()
  set(QUICKJSC_BRIDGE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/shared/arm/libquickjs_c_bridge_plugin.so")
endif()

install(CODE "file(REMOVE_RECURSE \"${INSTALL_BUNDLE_LIB_DIR}/${QUICKJSC_BRIDGE}\")" COMPONENT Runtime)
install(FILES "${QUICKJSC_BRIDGE_PATH}" RENAME "${QUICKJSC_BRIDGE}" DESTINATION "${INSTALL_BUNDLE_LIB_DIR}" COMPONENT Runtime)

# List of absolute paths to libraries that should be bundled with the plugin
set(flutter_ilib_bundled_libraries
  "${INSTALL_BUNDLE_LIB_DIR}/${QUICKJSC_BRIDGE}"
  PARENT_SCOPE
)
