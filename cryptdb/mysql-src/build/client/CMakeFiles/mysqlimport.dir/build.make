# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zy/cryptdb/mysql-src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zy/cryptdb/mysql-src/build

# Include any dependencies generated for this target.
include client/CMakeFiles/mysqlimport.dir/depend.make

# Include the progress variables for this target.
include client/CMakeFiles/mysqlimport.dir/progress.make

# Include the compile flags for this target's objects.
include client/CMakeFiles/mysqlimport.dir/flags.make

client/CMakeFiles/mysqlimport.dir/mysqlimport.c.o: client/CMakeFiles/mysqlimport.dir/flags.make
client/CMakeFiles/mysqlimport.dir/mysqlimport.c.o: ../client/mysqlimport.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zy/cryptdb/mysql-src/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object client/CMakeFiles/mysqlimport.dir/mysqlimport.c.o"
	cd /home/zy/cryptdb/mysql-src/build/client && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mysqlimport.dir/mysqlimport.c.o   -c /home/zy/cryptdb/mysql-src/client/mysqlimport.c

client/CMakeFiles/mysqlimport.dir/mysqlimport.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mysqlimport.dir/mysqlimport.c.i"
	cd /home/zy/cryptdb/mysql-src/build/client && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/zy/cryptdb/mysql-src/client/mysqlimport.c > CMakeFiles/mysqlimport.dir/mysqlimport.c.i

client/CMakeFiles/mysqlimport.dir/mysqlimport.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mysqlimport.dir/mysqlimport.c.s"
	cd /home/zy/cryptdb/mysql-src/build/client && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/zy/cryptdb/mysql-src/client/mysqlimport.c -o CMakeFiles/mysqlimport.dir/mysqlimport.c.s

client/CMakeFiles/mysqlimport.dir/mysqlimport.c.o.requires:
.PHONY : client/CMakeFiles/mysqlimport.dir/mysqlimport.c.o.requires

client/CMakeFiles/mysqlimport.dir/mysqlimport.c.o.provides: client/CMakeFiles/mysqlimport.dir/mysqlimport.c.o.requires
	$(MAKE) -f client/CMakeFiles/mysqlimport.dir/build.make client/CMakeFiles/mysqlimport.dir/mysqlimport.c.o.provides.build
.PHONY : client/CMakeFiles/mysqlimport.dir/mysqlimport.c.o.provides

client/CMakeFiles/mysqlimport.dir/mysqlimport.c.o.provides.build: client/CMakeFiles/mysqlimport.dir/mysqlimport.c.o

# Object files for target mysqlimport
mysqlimport_OBJECTS = \
"CMakeFiles/mysqlimport.dir/mysqlimport.c.o"

# External object files for target mysqlimport
mysqlimport_EXTERNAL_OBJECTS =

client/mysqlimport: client/CMakeFiles/mysqlimport.dir/mysqlimport.c.o
client/mysqlimport: libmysql/libmysqlclient.a
client/mysqlimport: client/CMakeFiles/mysqlimport.dir/build.make
client/mysqlimport: client/CMakeFiles/mysqlimport.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable mysqlimport"
	cd /home/zy/cryptdb/mysql-src/build/client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mysqlimport.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
client/CMakeFiles/mysqlimport.dir/build: client/mysqlimport
.PHONY : client/CMakeFiles/mysqlimport.dir/build

client/CMakeFiles/mysqlimport.dir/requires: client/CMakeFiles/mysqlimport.dir/mysqlimport.c.o.requires
.PHONY : client/CMakeFiles/mysqlimport.dir/requires

client/CMakeFiles/mysqlimport.dir/clean:
	cd /home/zy/cryptdb/mysql-src/build/client && $(CMAKE_COMMAND) -P CMakeFiles/mysqlimport.dir/cmake_clean.cmake
.PHONY : client/CMakeFiles/mysqlimport.dir/clean

client/CMakeFiles/mysqlimport.dir/depend:
	cd /home/zy/cryptdb/mysql-src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zy/cryptdb/mysql-src /home/zy/cryptdb/mysql-src/client /home/zy/cryptdb/mysql-src/build /home/zy/cryptdb/mysql-src/build/client /home/zy/cryptdb/mysql-src/build/client/CMakeFiles/mysqlimport.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : client/CMakeFiles/mysqlimport.dir/depend

