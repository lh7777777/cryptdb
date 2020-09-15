# Install script for directory: /home/zy/cryptdb/mysql-src/include

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/zy/cryptdb/mysql-src/include/mysql.h"
    "/home/zy/cryptdb/mysql-src/include/mysql_com.h"
    "/home/zy/cryptdb/mysql-src/include/mysql_time.h"
    "/home/zy/cryptdb/mysql-src/include/my_list.h"
    "/home/zy/cryptdb/mysql-src/include/my_alloc.h"
    "/home/zy/cryptdb/mysql-src/include/typelib.h"
    "/home/zy/cryptdb/mysql-src/include/mysql/plugin.h"
    "/home/zy/cryptdb/mysql-src/include/mysql/plugin_audit.h"
    "/home/zy/cryptdb/mysql-src/include/mysql/plugin_ftparser.h"
    "/home/zy/cryptdb/mysql-src/include/my_dbug.h"
    "/home/zy/cryptdb/mysql-src/include/m_string.h"
    "/home/zy/cryptdb/mysql-src/include/my_sys.h"
    "/home/zy/cryptdb/mysql-src/include/my_xml.h"
    "/home/zy/cryptdb/mysql-src/include/mysql_embed.h"
    "/home/zy/cryptdb/mysql-src/include/my_pthread.h"
    "/home/zy/cryptdb/mysql-src/include/decimal.h"
    "/home/zy/cryptdb/mysql-src/include/errmsg.h"
    "/home/zy/cryptdb/mysql-src/include/my_global.h"
    "/home/zy/cryptdb/mysql-src/include/my_net.h"
    "/home/zy/cryptdb/mysql-src/include/my_getopt.h"
    "/home/zy/cryptdb/mysql-src/include/sslopt-longopts.h"
    "/home/zy/cryptdb/mysql-src/include/my_dir.h"
    "/home/zy/cryptdb/mysql-src/include/sslopt-vars.h"
    "/home/zy/cryptdb/mysql-src/include/sslopt-case.h"
    "/home/zy/cryptdb/mysql-src/include/sql_common.h"
    "/home/zy/cryptdb/mysql-src/include/keycache.h"
    "/home/zy/cryptdb/mysql-src/include/m_ctype.h"
    "/home/zy/cryptdb/mysql-src/include/my_attribute.h"
    "/home/zy/cryptdb/mysql-src/include/my_compiler.h"
    "/home/zy/cryptdb/mysql-src/build/include/mysql_version.h"
    "/home/zy/cryptdb/mysql-src/build/include/my_config.h"
    "/home/zy/cryptdb/mysql-src/build/include/mysqld_ername.h"
    "/home/zy/cryptdb/mysql-src/build/include/mysqld_error.h"
    "/home/zy/cryptdb/mysql-src/build/include/sql_state.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mysql" TYPE DIRECTORY FILES "/home/zy/cryptdb/mysql-src/include/mysql/" FILES_MATCHING REGEX "/[^/]*\\.h$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

