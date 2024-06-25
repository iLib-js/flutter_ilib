
cmake_minimum_required(VERSION 2.8.7)

macro(_webos_set_from_env var path)
  set(${var} "${path}")
endmacro()

_webos_set_from_env(_WEBOS_INSTALL_SYSBUS_DATADIR           ${PROJECT_BINARY_DIR}/sysbus)
_webos_set_from_env(_WEBOS_INSTALL_SYSBUS_APIPERMISSIONSDIR ${_WEBOS_INSTALL_SYSBUS_DATADIR}/api-permissions.d)
_webos_set_from_env(_WEBOS_INSTALL_SYSBUS_GROUPSDIR         ${_WEBOS_INSTALL_SYSBUS_DATADIR}/groups.d)
_webos_set_from_env(_WEBOS_INSTALL_SYSBUS_PERMISSIONSDIR    ${_WEBOS_INSTALL_SYSBUS_DATADIR}/client-permissions.d)
_webos_set_from_env(_WEBOS_INSTALL_SYSBUS_ROLESDIR          ${_WEBOS_INSTALL_SYSBUS_DATADIR}/roles.d)
_webos_set_from_env(_WEBOS_INSTALL_SYSBUS_SERVICESDIR       ${_WEBOS_INSTALL_SYSBUS_DATADIR}/services.d)
_webos_set_from_env(_WEBOS_INSTALL_SYSBUS_MANIFESTSDIR      ${_WEBOS_INSTALL_SYSBUS_DATADIR}/manifests.d)

_webos_set_from_env(_WEBOS_INSTALL_SYSTEM_DIR               ${PROJECT_BINARY_DIR}/system)
_webos_set_from_env(_WEBOS_INSTALL_SYSCONFDIR               ${_WEBOS_INSTALL_SYSTEM_DIR}/etc)
_webos_set_from_env(_WEBOS_INSTALL_SYSCONF_SYSTEMD_DIR      ${_WEBOS_INSTALL_SYSCONFDIR}/systemd/system)

_webos_set_from_env(WEBOS_INSTALL_DEVELOPERDIR              /media/developer)
if(SVC_DEVMODE)
  _webos_set_from_env(WEBOS_INSTALL_DEV_DOWNLOADEDDIR       ${WEBOS_INSTALL_DEVELOPERDIR}/apps)
  _webos_set_from_env(WEBOS_INSTALL_PREFIX                  ${WEBOS_INSTALL_DEV_DOWNLOADEDDIR}/usr)
  _webos_set_from_env(WEBOS_INSTALL_SYSBUS_DATADIR          /var/luna-service2-dev)
else()
  _webos_set_from_env(WEBOS_INSTALL_PREFIX                  /usr)
  _webos_set_from_env(WEBOS_INSTALL_SYSBUS_DATADIR          /usr/share/luna-service2)
endif()

_webos_set_from_env(WEBOS_INSTALL_WEBOS_SERVICESDIR         ${WEBOS_INSTALL_PREFIX}/palm/services)

_webos_set_from_env(WEBOS_INSTALL_SYSBUS_APIPERMISSIONSDIR  ${WEBOS_INSTALL_SYSBUS_DATADIR}/api-permissions.d)
_webos_set_from_env(WEBOS_INSTALL_SYSBUS_GROUPSDIR          ${WEBOS_INSTALL_SYSBUS_DATADIR}/groups.d)
_webos_set_from_env(WEBOS_INSTALL_SYSBUS_PERMISSIONSDIR     ${WEBOS_INSTALL_SYSBUS_DATADIR}/client-permissions.d)
_webos_set_from_env(WEBOS_INSTALL_SYSBUS_ROLESDIR           ${WEBOS_INSTALL_SYSBUS_DATADIR}/roles.d)
_webos_set_from_env(WEBOS_INSTALL_SYSBUS_SERVICESDIR        ${WEBOS_INSTALL_SYSBUS_DATADIR}/services.d)
_webos_set_from_env(WEBOS_INSTALL_SYSBUS_MANIFESTSDIR       ${WEBOS_INSTALL_SYSBUS_DATADIR}/manifests.d)

function(webos_build_system_bus_files)
  if(ARGC LESS 1)
    set(source_path files/sysbus)
  elseif(ARGC EQUAL 1)
    set(source_path ${ARGV0})
    set(service_name "com.flutter.service.example")
  elseif(ARGC EQUAL 2)
    set(source_path ${ARGV0})
    set(service_name ${ARGV1})
  else()
    message(FATAL_ERROR "webos_build_system_bus_files(): invalid argument list: '${ARGN}'")
  endif()

  file(REMOVE_RECURSE \"${WEBOS_INSTALL_SYSBUS_DATADIR}\")
  set(source_path ${CMAKE_SOURCE_DIR}/${source_path}/)

  set(WEBOS_FLUTTER_SERVICE_RUNNER /usr/bin/flutter-service)
  if(SVC_DEVMODE)
    configure_file("${source_path}/run-flutter-service.in" "${source_path}/run-flutter-service")
    install(FILES ${source_path}/run-flutter-service DESTINATION ${PROJECT_BINARY_DIR}/bundle
            PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ
                        GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE)
    install(CODE "file(REMOVE \"${source_path}/run-flutter-service\")" COMPONENT Runtime)

    set(WEBOS_FLUTTER_SERVICE_RUNNER ${WEBOS_INSTALL_WEBOS_SERVICESDIR}/${service_name}/run-flutter-service)
  endif()

  configure_file("${source_path}/template.manifest.json.in" "${source_path}/${service_name}.manifest.json")
  configure_file("${source_path}/template.perm.json.in" "${source_path}/${service_name}.perm.json")
  configure_file("${source_path}/template.api.json.in" "${source_path}/${service_name}.api.json")
  configure_file("${source_path}/template.role.json.in" "${source_path}/${service_name}.role.json")
  configure_file("${source_path}/template.service.in" "${source_path}/${service_name}.service")

  _webos_install_system_bus_files(${source_path} service SERVICESDIR)
  _webos_install_system_bus_files(${source_path} groups.json GROUPSDIR)
  _webos_install_system_bus_files(${source_path} role.json ROLESDIR)
  _webos_install_system_bus_files(${source_path} perm.json PERMISSIONSDIR)
  _webos_install_system_bus_files(${source_path} api.json APIPERMISSIONSDIR)
  _webos_install_system_bus_files(${source_path} manifest.json MANIFESTSDIR)
endfunction()

function(webos_build_system_systemd_files)
  if(ARGC LESS 1)
    set(source_path files/launch)
  elseif(ARGC EQUAL 1)
    set(source_path ${ARGV0})
    set(service_name "com.flutter.service.example")
  elseif(ARGC EQUAL 2)
    set(source_path ${ARGV0})
    set(service_name ${ARGV1})
  else()
    message(FATAL_ERROR "webos_build_system_bus_files(): invalid argument list: '${ARGN}'")
  endif()

  set(WEBOS_FLUTTER_SERVICE_RUNNER /usr/bin/flutter-service)
  set(source_path ${CMAKE_SOURCE_DIR}/${source_path}/)
  #file(REMOVE_RECURSE \"${WEBOS_INSTALL_SYSBUS_DATADIR}\")

  file(GLOB filelist ${source_path}/*.service.in)
  foreach(sysfile ${filelist})
    string(REGEX REPLACE ".in$" "" destfile ${sysfile})
    get_filename_component(destfile ${destfile} NAME)

    configure_file("${sysfile}" "${source_path}/${destfile}")

    # Install the file, renaming it to remove the visibility component
    install(FILES "${source_path}/${destfile}" DESTINATION "${_WEBOS_INSTALL_SYSCONF_SYSTEMD_DIR}")
    install(CODE "file(REMOVE \"${source_path}/${destfile}\")" COMPONENT Runtime)
  endforeach()
endfunction()

# Usage: _webos_install_system_bus_files(<path-to-search> <file-type> <path-to-install-suffix> optional: <visibility>)
#
# Configures and install services and roles files. Visibility type: pub, prv or none.
# File name to search and destination install path will be extended by visibility type.
function(_webos_install_system_bus_files source_path ftype dest_path)
  if(ARGC EQUAL 3)
    set(visibility_suffix  "")
    set(regex_ptrn_conf "\\.in$")
    set(regex_ptrn_inst "")
  elseif(ARGC EQUAL 4)
    set(visibility_suffix  ".${ARGV3}")
    set(regex_ptrn_conf "\\.${ARGV3}\\.in$")
    set(regex_ptrn_inst "\\.${ARGV3}$")
  else()
    message(FATAL_ERROR "_webos_install_system_bus_files(): invalid argument list: '${ARGN}'")
  endif()

  # Install any files not requiring configuration
  file(GLOB filelist ${source_path}/*.${ftype}${visibility_suffix})
  foreach(sysfile ${filelist})
    # Remove the visibility_suffix of the filename
    if (NOT ${regex_ptrn_inst} STREQUAL "")
      string(REGEX REPLACE ${regex_ptrn_inst} "" destfile ${sysfile})
    else()
      set(destfile ${sysfile})
    endif()

    get_filename_component(destfile ${destfile} NAME)
    # Install the file, renaming it to remove the visibility component
    install(FILES ${sysfile} DESTINATION ${_WEBOS_INSTALL_SYSBUS_${dest_path}} RENAME ${destfile})
    install(CODE "file(REMOVE \"${sysfile}\")" COMPONENT Runtime)
  endforeach()
endfunction()
