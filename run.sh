#!/bin/bash

# Set the name of your executable
EXECUTABLE="STCPRouting"

# Set the path to your build directory
BUILD_DIR="build"

# Check if the build directory is empty
if [ -z "$(ls -A $BUILD_DIR)" ]; then
    echo "Build directory is empty. Running CMake and Make..."
    mkdir -p $BUILD_DIR
    cd $BUILD_DIR
    cmake ..
    make
else
    echo "Build directory is not empty. Running ./$EXECUTABLE..."
    echo "If executable crashes, delete all the files inside build and run again"
    cd $BUILD_DIR
fi

# Run the executable
./$EXECUTABLE