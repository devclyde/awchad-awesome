local beautiful = require('beautiful')
local gears = require('gears')

local xrdb = beautiful.xresources.get_current_theme()

return {
  dpi = beautiful.xresources.apply_dpi,

  background = gears.color.parse_color(xrdb.background),
  foreground = gears.color.parse_color(xrdb.foreground),

  color00 = gears.color.parse_color(xrdb.color0),
  color01 = gears.color.parse_color(xrdb.color1),
  color02 = gears.color.parse_color(xrdb.color2),
  color03 = gears.color.parse_color(xrdb.color3),
  color04 = gears.color.parse_color(xrdb.color4),
  color05 = gears.color.parse_color(xrdb.color5),
  color06 = gears.color.parse_color(xrdb.color6),
  color07 = gears.color.parse_color(xrdb.color7),
  color08 = gears.color.parse_color(xrdb.color8),
  color09 = gears.color.parse_color(xrdb.color9),
  color10 = gears.color.parse_color(xrdb.color10),
  color11 = gears.color.parse_color(xrdb.color11),
  color12 = gears.color.parse_color(xrdb.color12),
  color13 = gears.color.parse_color(xrdb.color13),
  color14 = gears.color.parse_color(xrdb.color14),
  color15 = gears.color.parse_color(xrdb.color15),
}
