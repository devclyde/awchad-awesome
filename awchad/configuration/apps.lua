return {
  terminal_emulator = {
    path = '/usr/bin/alacritty',
  },
  app_launcher = {
    path = '/usr/bin/rofi',
    args = {
      '-show',
      'drun',
    },
  },
  command_prompt = {
    path = '/usr/bin/rofi',
    args = {
      '-show',
      'run',
    },
  },
  screenshot = {
    path = '/usr/bin/flameshot',
    args = {
      'gui',
    },
  },
}
