local awful = require('awful')
local wibox = require('wibox')
local beautiful = require('beautiful')

screen.connect_signal('request::desktop_decoration', function(screen)
  awful.tag({ '1', '2', '3', '4', '5', '6' }, screen, awful.layout.layouts[1])

  screen.workspaces = awful.widget.taglist({
    screen = screen,
    filter = awful.widget.taglist.filter.all,
    buttons = {
      awful.button({}, 1, function(tag)
        tag:view_only()
      end),
      awful.button({ AWCHAD_MODIFIER }, 1, function(tag)
        if client.focus then
          client.focus:move_to_tag(tag)
        end
      end),
      awful.button({}, 3, awful.tag.viewtoggle),
      awful.button({ AWCHAD_MODIFIER }, 3, function(tag)
        if client.focus then
          client.focus:toggle_tag(tag)
        end
      end),
      awful.button({}, 4, function(tag)
        awful.tag.viewprev(tag.screen)
      end),
      awful.button({}, 5, function(tag)
        awful.tag.viewnext(tag.screen)
      end),
    },
  })

  screen.statusbar = awful.wibar({
    screen = screen,
    position = beautiful.statusbar.position,
    height = beautiful.statusbar.height,
    bg = beautiful.statusbar.background,
    fg = beautiful.statusbar.foreground,
    widget = {
      layout = wibox.layout.align.horizontal,
      {
        layout = wibox.layout.fixed.horizontal,
        screen.workspaces,
      },
    },
  })
end)
