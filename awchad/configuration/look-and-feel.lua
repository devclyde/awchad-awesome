local gears = require('gears')

return {
  wallpapers = {
    path = gears.filesystem.get_configuration_dir() .. '/assets/wallpaper.png',
    options = {
      extensions = { 'png', 'jpg' },
    },
  },
}
