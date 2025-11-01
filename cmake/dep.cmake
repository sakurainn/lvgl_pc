include(FetchContent)

cmake_policy(SET CMP0079 NEW)
FetchContent_Declare(
    sdl2
    GIT_REPOSITORY https://github.com/libsdl-org/SDL.git
    GIT_TAG SDL2
)
FetchContent_MakeAvailable(sdl2)

FetchContent_Declare(
    libpng
    GIT_REPOSITORY https://github.com/sakurainn/libpng.git
    GIT_TAG libpng18
)
FetchContent_MakeAvailable(libpng)



FetchContent_Declare(
    lvgl
    GIT_REPOSITORY https://github.com/lvgl/lvgl.git
)
set(LV_BUILD_CONF_PATH ${CMAKE_SOURCE_DIR}/lv_conf.h)
FetchContent_MakeAvailable(lvgl)

target_link_libraries(lvgl PUBLIC SDL2::SDL2main SDL2::SDL2 png_shared)