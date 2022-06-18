local awful = require('awful')
local wibox = require('wibox')
local gears = require('gears')

local look_and_feel = require('awchad.configuration.look-and-feel')

screen.connect_signal('request::wallpaper', function(screen)
  local wallpaper_result = nil

  if type(look_and_feel.wallpapers.path) == 'table' then
    local lookup = look_and_feel.wallpapers.path[math.random(1, gears.table.count_keys(look_and_feel.wallpapers.path))]

    wallpaper_result = lookup
  elseif gears.filesystem.is_dir(look_and_feel.wallpapers.path) then
    wallpaper_result = gears.filesystem.get_random_file_from_dir(
      look_and_feel.wallpapers.path,
      look_and_feel.wallpapers.options.extensions or { 'png', 'jpg' },
      true
    )
  else
    wallpaper_result = look_and_feel.wallpapers.path
  end

  awful.wallpaper({
    screen = screen,
    widget = {
      {
        image = wallpaper_result,
        widget = wibox.widget.imagebox,
      },
      valign = 'center',
      halign = 'center',
      tiled = false,
      widget = wibox.container.tile,
    },
  })
end)
