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
include storage/myisam/CMakeFiles/myisamlog.dir/depend.make

# Include the progress variables for this target.
include storage/myisam/CMakeFiles/myisamlog.dir/progress.make

# Include the compile flags for this target's objects.
include storage/myisam/CMakeFiles/myisamlog.dir/flags.make

storage/myisam/CMakeFiles/myisamlog.dir/myisamlog.c.o: storage/myisam/CMakeFiles/myisamlog.dir/flags.make
storage/myisam/CMakeFiles/myisamlog.dir/myisamlog.c.o: ../storage/myisam/myisamlog.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zy/cryptdb/mysql-src/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object storage/myisam/CMakeFiles/myisamlog.dir/myisamlog.c.o"
	cd /home/zy/cryptdb/mysql-src/build/storage/myisam && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/myisamlog.dir/myisamlog.c.o   -c /home/zy/cryptdb/mysql-src/storage/myisam/myisamlog.c

storage/myisam/CMakeFiles/myisamlog.dir/myisamlog.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/myisamlog.dir/myisamlog.c.i"
	cd /home/zy/cryptdb/mysql-src/build/storage/myisam && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/zy/cryptdb/mysql-src/storage/myisam/myisamlog.c > CMakeFiles/myisamlog.dir/myisamlog.c.i

storage/myisam/CMakeFiles/myisamlog.dir/myisamlog.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/myisamlog.dir/myisamlog.c.s"
	cd /home/zy/cryptdb/mysql-src/build/storage/myisam && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/zy/cryptdb/mysql-src/storage/myisam/myisamlog.c -o CMakeFiles/myisamlog.dir/myisamlog.c.s

storage/myisam/CMakeFiles/myisamlog.dir/myisamlog.c.o.requires:
.PHONY : storage/myisam/CMakeFiles/myisamlog.dir/myisamlog.c.o.requires

storage/myisam/CMakeFiles/myisamlog.dir/myisamlog.c.o.provides: storage/myisam/CMakeFiles/myisamlog.dir/myisamlog.c.o.requires
	$(MAKE) -f storage/myisam/CMakeFiles/myisamlog.dir/build.make storage/myisam/CMakeFiles/myisamlog.dir/myisamlog.c.o.provides.build
.PHONY : storage/myisam/CMakeFiles/myisamlog.dir/myisamlog.c.o.provides

storage/myisam/CMakeFiles/myisamlog.dir/myisamlog.c.o.provides.build: storage/myisam/CMakeFiles/myisamlog.dir/myisamlog.c.o

# Object files for target myisamlog
myisamlog_OBJECTS = \
"CMakeFiles/myisamlog.dir/myisamlog.c.o"

# External object files for target myisamlog
myisamlog_EXTERNAL_OBJECTS =

storage/myisam/myisamlog: storage/myisam/CMakeFiles/myisamlog.dir/myisamlog.c.o
storage/myisam/myisamlog: storage/myisam/libmyisam.a
storage/myisam/myisamlog: mysys/libmysys.a
storage/myisam/myisamlog: dbug/libdbug.a
storage/myisam/myisamlog: mysys/libmysys.a
storage/myisam/myisamlog: dbug/libdbug.a
storage/myisam/myisamlog: strings/libstrings.a
storage/myisam/myisamlog: storage/myisam/CMakeFiles/myisamlog.dir/build.make
storage/myisam/myisamlog: storage/myisam/CMakeFiles/myisamlog.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable myisamlog"
	cd /home/zy/cryptdb/mysql-src/build/storage/myisam && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/myisamlog.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
storage/myisam/CMakeFiles/myisamlog.dir/build: storage/myisam/myisamlog
.PHONY : storage/myisam/CMakeFiles/myisamlog.dir/build

storage/myisam/CMakeFiles/myisamlog.dir/requires: storage/myisam/CMakeFiles/myisamlog.dir/myisamlog.c.o.requires
.PHONY : storage/myisam/CMakeFiles/myisamlog.dir/requires

storage/myisam/CMakeFiles/myisamlog.dir/clean:
	cd /home/zy/cryptdb/mysql-src/build/storage/myisam && $(CMAKE_COMMAND) -P CMakeFiles/myisamlog.dir/cmake_clean.cmake
.PHONY : storage/myisam/CMakeFiles/myisamlog.dir/clean

storage/myisam/CMakeFiles/myisamlog.dir/depend:
	cd /home/zy/cryptdb/mysql-src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zy/cryptdb/mysql-src /home/zy/cryptdb/mysql-src/storage/myisam /home/zy/cryptdb/mysql-src/build /home/zy/cryptdb/mysql-src/build/storage/myisam /home/zy/cryptdb/mysql-src/build/storage/myisam/CMakeFiles/myisamlog.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : storage/myisam/CMakeFiles/myisamlog.dir/depend

