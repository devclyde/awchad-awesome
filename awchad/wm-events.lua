local beautiful = require('beautiful')
local gears = require('gears')

awesome.connect_signal('wm::pre_setup', function()
  require('awful.autofocus')
  require('awful.hotkeys_popup.keys')

  beautiful.init(require('awchad.theme'))
end)

awesome.connect_signal('wm::post_setup', function()
  gears.timer({
    timeout = 30,
    autostart = true,
    callback = function()
      collectgarbage()
    end,
  })
end)
