cmake_minimum_required(VERSION 3.15)
# stop cmake from taking make from CMAKE_SYSROOT
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
project(runner LANGUAGES CXX)

set(BINARY_NAME "example")
set(WEBOS_PLUGIN_INTERFACE_LIBRARY "webos_plugin_interface")

cmake_policy(SET CMP0063 NEW)

set(CMAKE_INSTALL_RPATH "$ORIGIN;$ORIGIN/lib;.")
set(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)

# Basically we use this include when we got the following error:
#  fatal error: 'bits/c++config.h' file not found
include_directories(SYSTEM ${FLUTTER_SYSTEM_INCLUDE_DIRECTORIES})
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# Configure build options.
if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
  set(CMAKE_BUILD_TYPE "Debug" CACHE
    STRING "Flutter build mode" FORCE)
  set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS
    "Debug" "Profile" "Release")
endif()

if(NOT FLUTTER_RUN_MODE)
  set(FLUTTER_RUN_MODE "release" CACHE
    STRING "Flutter run mode" FORCE)
endif()

if(NOT FLUTTER_FRAMEWORK_VERSION)
  set(FLUTTER_FRAMEWORK_VERSION "latest" CACHE
    STRING "Flutter framework version" FORCE)
endif()

add_definitions(-D_FLUTTER_RUN_MODE=\"${FLUTTER_RUN_MODE}\")
add_definitions(-D_FLUTTER_FRAMEWORK_VERSION=\"${FLUTTER_FRAMEWORK_VERSION}\")

# Configure build option to target backend.
if (NOT FLUTTER_TARGET_BACKEND_TYPE)
  set(FLUTTER_TARGET_BACKEND_TYPE "wayland" CACHE
    STRING "Flutter target backend type" FORCE)
  set_property(CACHE FLUTTER_TARGET_BACKEND_TYPE PROPERTY STRINGS
    "wayland" "gbm" "eglstream" "x11")
endif()

option(SVC_DEVMODE "Generate ls2 configuration as devmode" OFF)

# Compilation settings that should be applied to most targets.
function(APPLY_STANDARD_SETTINGS TARGET)
  target_compile_features(${TARGET} PUBLIC cxx_std_17)
  target_compile_options(${TARGET} PRIVATE -Wall -Werror)
  target_compile_options(${TARGET} PRIVATE "$<$<NOT:$<CONFIG:Debug>>:-O3>")
  target_compile_definitions(${TARGET} PRIVATE "$<$<NOT:$<CONFIG:Debug>>:NDEBUG>")
endfunction()

set(FLUTTER_MANAGED_DIR "${CMAKE_CURRENT_SOURCE_DIR}/flutter")

# Flutter library and tool build rules.
add_subdirectory(${FLUTTER_MANAGED_DIR})

# Generated plugin build rules, which manage building the plugins and adding
# them to the application.
include(flutter/generated_plugins.cmake)

# === Installation ===
# By default, "installing" just makes a relocatable bundle in the build
# directory.
set(BUILD_BUNDLE_DIR "${PROJECT_BINARY_DIR}/bundle")
if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX "${BUILD_BUNDLE_DIR}" CACHE PATH "..." FORCE)
endif()

# Start with a clean build bundle directory every time.
install(CODE "
  file(REMOVE_RECURSE \"${BUILD_BUNDLE_DIR}/\")
  " COMPONENT Runtime)

set(INSTALL_BUNDLE_DATA_DIR "${CMAKE_INSTALL_PREFIX}/data")
set(INSTALL_BUNDLE_LIB_DIR "${CMAKE_INSTALL_PREFIX}/lib")

install(TARGETS ${WEBOS_PLUGIN_INTERFACE_LIBRARY} RUNTIME DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
  COMPONENT Runtime)

install(FILES "${FLUTTER_ICU_DATA_FILE}" DESTINATION "${INSTALL_BUNDLE_DATA_DIR}"
  COMPONENT Runtime)

install(FILES "${FLUTTER_LIBRARY}"
  DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
  COMPONENT Runtime)
install(FILES "${FLUTTER_EMBEDDER_LIBRARY}"
  DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
  COMPONENT Runtime)
install(FILES "${FLUTTER_COMMON_LIBRARY}"
  DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
  COMPONENT Runtime)

if(PLUGIN_BUNDLED_LIBRARIES)
  foreach(bundled_library ${PLUGIN_BUNDLED_LIBRARIES})
    install(FILES "${bundled_library}"
      DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
      COMPONENT Runtime)
  endforeach(bundled_library)
endif()

# Fully re-copy the assets directory on each build to avoid having stale files
# from a previous install.
set(FLUTTER_ASSET_DIR_NAME "flutter_assets")
install(CODE "
  file(REMOVE_RECURSE \"${INSTALL_BUNDLE_DATA_DIR}/${FLUTTER_ASSET_DIR_NAME}\")
  " COMPONENT Runtime)
install(DIRECTORY "${PROJECT_BUILD_DIR}/${FLUTTER_ASSET_DIR_NAME}"
  DESTINATION "${INSTALL_BUNDLE_DATA_DIR}" COMPONENT Runtime)

# Install the AOT library on non-Debug builds only.
if(NOT CMAKE_BUILD_TYPE MATCHES "Debug")
  install(FILES "${AOT_LIBRARY}" DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
    COMPONENT Runtime)
endif()

configure_file("${FLUTTER_MANAGED_DIR}/local-conf.json.in" "${FLUTTER_MANAGED_DIR}/local-conf.json")
install(FILES "${FLUTTER_MANAGED_DIR}/local-conf.json" DESTINATION "${CMAKE_INSTALL_PREFIX}"
  COMPONENT Runtime)

IF(DEFINED SERVICE_NAME)
  include(webos_service.cmake)
  webos_build_system_bus_files("sysbus" ${SERVICE_NAME})

  # For install systemd service unit file, add service configuration file to launch directory.
  # webos_build_system_systemd_files("launch" ${SERVICE_NAME})
endif(DEFINED SERVICE_NAME)

