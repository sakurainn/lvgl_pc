cmake_minimum_required(VERSION 3.10)
project(lvgl_pc)
include(cmake/dep.cmake)



add_executable(${PROJECT_NAME} main/main.c)


target_link_libraries(${PROJECT_NAME}  lvgl)