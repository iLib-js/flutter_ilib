cmake_minimum_required(VERSION 3.15)

set(EPHEMERAL_DIR "${CMAKE_CURRENT_SOURCE_DIR}/ephemeral")

find_package(PkgConfig)
pkg_check_modules(GLIB REQUIRED glib-2.0)

# Configuration provided via flutter tool.
include(${EPHEMERAL_DIR}/generated_config.cmake)

# Serves the same purpose as list(TRANSFORM ... PREPEND ...),
# which isn't available in 3.10.
function(list_prepend LIST_NAME PREFIX)
    set(NEW_LIST "")
    foreach(element ${${LIST_NAME}})
        list(APPEND NEW_LIST "${PREFIX}${element}")
    endforeach(element)
    set(${LIST_NAME} "${NEW_LIST}" PARENT_SCOPE)
endfunction()

# === Flutter Library ===
# System-level dependencies.
set(FLUTTER_LIBRARY "${EPHEMERAL_DIR}/libflutter_engine.so")
if(FLUTTER_TARGET_BACKEND_TYPE MATCHES "gbm")
  set(FLUTTER_EMBEDDER_LIBRARY "${EPHEMERAL_DIR}/libflutter_elinux_gbm.so")
elseif(FLUTTER_TARGET_BACKEND_TYPE MATCHES "eglstream")
  set(FLUTTER_EMBEDDER_LIBRARY "${EPHEMERAL_DIR}/libflutter_elinux_eglstream.so")
elseif(FLUTTER_TARGET_BACKEND_TYPE MATCHES "x11")
  set(FLUTTER_EMBEDDER_LIBRARY "${EPHEMERAL_DIR}/libflutter_elinux_x11.so")
else()
  set(FLUTTER_EMBEDDER_LIBRARY "${EPHEMERAL_DIR}/libflutter_elinux_wayland.so")
endif()
set(FLUTTER_COMMON_LIBRARY "${EPHEMERAL_DIR}/libflutter_common.so")

# Published to parent scope for install step.
set(FLUTTER_LIBRARY ${FLUTTER_LIBRARY} PARENT_SCOPE)
set(FLUTTER_EMBEDDER_LIBRARY ${FLUTTER_EMBEDDER_LIBRARY} PARENT_SCOPE)
set(FLUTTER_COMMON_LIBRARY ${FLUTTER_COMMON_LIBRARY} PARENT_SCOPE)
set(FLUTTER_ICU_DATA_FILE "${EPHEMERAL_DIR}/icudtl.dat" PARENT_SCOPE)
set(PROJECT_BUILD_DIR "${PROJECT_DIR}/build/webos/" PARENT_SCOPE)
set(AOT_LIBRARY "${EPHEMERAL_DIR}/libapp.so" PARENT_SCOPE)

add_library(flutter INTERFACE)
target_include_directories(flutter INTERFACE
  "${EPHEMERAL_DIR}/include"
)
target_link_libraries(flutter INTERFACE "${FLUTTER_COMMON_LIBRARY}")
add_dependencies(flutter flutter_assemble)

# For dynamic loading plugins in webOS runner
add_library(${WEBOS_PLUGIN_INTERFACE_LIBRARY} SHARED
  "generated_plugin_registrant.cc"
)
apply_standard_settings(${WEBOS_PLUGIN_INTERFACE_LIBRARY})
target_link_libraries(${WEBOS_PLUGIN_INTERFACE_LIBRARY} PRIVATE flutter)
target_include_directories(${WEBOS_PLUGIN_INTERFACE_LIBRARY} PRIVATE
  "${EPHEMERAL_DIR}/include"
  "${CMAKE_SOURCE_DIR}"
)
add_dependencies(${WEBOS_PLUGIN_INTERFACE_LIBRARY} flutter_assemble)

add_custom_target(flutter_assemble DEPENDS
  "${FLUTTER_COMMON_LIBRARY}"
)
