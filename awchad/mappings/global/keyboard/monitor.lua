local awful = require('awful')

awful.keyboard.append_global_keybindings({
  awful.key({}, 'XF86MonBrightnessUp', function()
    -- TODO!
    -- increase screen brightness
  end, {
    description = 'increase monitor brightness',
    group = 'monitor',
  }),
  awful.key({}, 'XF86MonBrightnessDown', function()
    -- TODO!
    -- increase screen brightness
  end, {
    description = 'decrease monitor brightness',
    group = 'monitor',
  }),
})
