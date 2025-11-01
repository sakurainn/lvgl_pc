#include <SDL2/SDL.h>
#include <demos/lv_demos.h>
#include <lvgl.h>

int main(int argc, char* argv[]) {
  lv_init();
  lv_display_t* disp = lv_sdl_window_create(400, 400);
  lv_sdl_mouse_create();
  lv_sdl_keyboard_create();
  lv_sdl_window_set_resizeable(disp, true);
  //   lv_demo_widgets();
  lv_demo_music();
  while (1) {
    lv_task_handler();
    lv_delay_ms(5);
  }
  return 0;
}
