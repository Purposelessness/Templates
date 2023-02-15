cmake_minimum_required(VERSION 3.10)
project(c-project)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
# set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fsanitize=address -fsanitize-recover=address -O1 -fno-omit-frame-pointer -g")
# set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fsanitize=leak -O1 -fno-omit-frame-pointer -g")
# set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fsanitize=thread -fPIE -pie -g -O1 -fno-omit-frame-pointer -g")

add_executable(program "main.c")
