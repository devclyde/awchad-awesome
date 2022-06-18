return {
  controller = '/usr/bin/brightnessctl',
  increase_brightness = {
    value = 5,
    args = {
      '-q',
      'set',
      '+$0%',
    },
  },
  decrease_brightness = {
    value = 5,
    args = {
      '-q',
      'set',
      '$0%-',
    },
  },
}
