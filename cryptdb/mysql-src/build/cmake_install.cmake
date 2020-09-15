# Install script for directory: /home/zy/cryptdb/mysql-src

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local/mysql")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Info")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/docs" TYPE FILE OPTIONAL FILES "/home/zy/cryptdb/mysql-src/Docs/mysql.info")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Info")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Readme")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE OPTIONAL FILES
    "/home/zy/cryptdb/mysql-src/COPYING"
    "/home/zy/cryptdb/mysql-src/LICENSE.mysql"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Readme")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Readme")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES "/home/zy/cryptdb/mysql-src/README")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Readme")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/docs" TYPE FILE FILES
    "/home/zy/cryptdb/mysql-src/build/Docs/INFO_SRC"
    "/home/zy/cryptdb/mysql-src/build/Docs/INFO_BIN"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Readme")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES "/home/zy/cryptdb/mysql-src/Docs/INSTALL-BINARY")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Readme")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Documentation")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/docs" TYPE DIRECTORY FILES "/home/zy/cryptdb/mysql-src/Docs/" REGEX "/INSTALL\\-BINARY$" EXCLUDE REGEX "/Makefile\\.[^/]*$" EXCLUDE REGEX "/glibc[^/]*$" EXCLUDE REGEX "/linuxthreads\\.txt$" EXCLUDE REGEX "/myisam\\.txt$" EXCLUDE REGEX "/mysql\\.info$" EXCLUDE REGEX "/sp\\-imp\\-spec\\.txt$" EXCLUDE)
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Documentation")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/zy/cryptdb/mysql-src/build/cmd-line-utils/libedit/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/storage/myisammrg/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/storage/csv/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/storage/blackhole/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/storage/heap/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/storage/innobase/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/storage/perfschema/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/storage/federated/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/storage/example/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/storage/myisam/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/storage/archive/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/plugin/daemon_example/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/plugin/fulltext/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/plugin/semisync/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/plugin/audit_null/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/plugin/auth/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/include/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/dbug/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/strings/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/vio/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/regex/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/mysys/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/libmysql/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/unittest/mytap/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/unittest/mysys/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/extra/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/tests/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/client/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/sql/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/sql/share/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/libservices/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/libmysqld/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/libmysqld/examples/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/mysql-test/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/mysql-test/lib/My/SafeProcess/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/support-files/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/scripts/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/sql-bench/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/man/cmake_install.cmake")
  INCLUDE("/home/zy/cryptdb/mysql-src/build/packaging/WiX/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/zy/cryptdb/mysql-src/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/zy/cryptdb/mysql-src/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
