# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/cmake/870/bin/cmake

# The command to remove a file.
RM = /snap/cmake/870/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lil-jim-jamo_o/Desktop/schooool/cs120/Graphics-Starter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lil-jim-jamo_o/Desktop/schooool/cs120/Graphics-Starter

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/snap/cmake/870/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/snap/cmake/858/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/lil-jim-jamo_o/Desktop/schooool/cs120/Graphics-Starter/CMakeFiles /home/lil-jim-jamo_o/Desktop/schooool/cs120/Graphics-Starter//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/lil-jim-jamo_o/Desktop/schooool/cs120/Graphics-Starter/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named graphics

# Build rule for target.
graphics: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 graphics
.PHONY : graphics

# fast build rule for target.
graphics/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/graphics.dir/build.make CMakeFiles/graphics.dir/build
.PHONY : graphics/fast

graphics.o: graphics.cpp.o
.PHONY : graphics.o

# target to build an object file
graphics.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/graphics.dir/build.make CMakeFiles/graphics.dir/graphics.cpp.o
.PHONY : graphics.cpp.o

graphics.i: graphics.cpp.i
.PHONY : graphics.i

# target to preprocess a source file
graphics.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/graphics.dir/build.make CMakeFiles/graphics.dir/graphics.cpp.i
.PHONY : graphics.cpp.i

graphics.s: graphics.cpp.s
.PHONY : graphics.s

# target to generate assembly for a file
graphics.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/graphics.dir/build.make CMakeFiles/graphics.dir/graphics.cpp.s
.PHONY : graphics.cpp.s

guy.o: guy.cpp.o
.PHONY : guy.o

# target to build an object file
guy.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/graphics.dir/build.make CMakeFiles/graphics.dir/guy.cpp.o
.PHONY : guy.cpp.o

guy.i: guy.cpp.i
.PHONY : guy.i

# target to preprocess a source file
guy.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/graphics.dir/build.make CMakeFiles/graphics.dir/guy.cpp.i
.PHONY : guy.cpp.i

guy.s: guy.cpp.s
.PHONY : guy.s

# target to generate assembly for a file
guy.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/graphics.dir/build.make CMakeFiles/graphics.dir/guy.cpp.s
.PHONY : guy.cpp.s

shape.o: shape.cpp.o
.PHONY : shape.o

# target to build an object file
shape.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/graphics.dir/build.make CMakeFiles/graphics.dir/shape.cpp.o
.PHONY : shape.cpp.o

shape.i: shape.cpp.i
.PHONY : shape.i

# target to preprocess a source file
shape.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/graphics.dir/build.make CMakeFiles/graphics.dir/shape.cpp.i
.PHONY : shape.cpp.i

shape.s: shape.cpp.s
.PHONY : shape.s

# target to generate assembly for a file
shape.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/graphics.dir/build.make CMakeFiles/graphics.dir/shape.cpp.s
.PHONY : shape.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... graphics"
	@echo "... graphics.o"
	@echo "... graphics.i"
	@echo "... graphics.s"
	@echo "... guy.o"
	@echo "... guy.i"
	@echo "... guy.s"
	@echo "... shape.o"
	@echo "... shape.i"
	@echo "... shape.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
