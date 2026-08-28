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

# The pure-Dart implementation has no JavaScript runtime, so no native
# libraries need to be bundled with this plugin. (The old flutter_js/QuickJS
# bridge was removed in the 2.0 rewrite.)
set(flutter_ilib_bundled_libraries
  ""
  PARENT_SCOPE
)
