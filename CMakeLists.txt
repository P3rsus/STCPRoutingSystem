cmake_minimum_required(VERSION 3.20)
project(STCPRouting)

set(CMAKE_CXX_STANDARD 14)

add_executable(STCPRouting src/main.cpp src/Stop.cpp src/Stop.h src/graph.h src/graph.cpp src/minHeap.h src/Application.cpp src/Application.h)
