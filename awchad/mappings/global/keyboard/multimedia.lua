local awful = require('awful')

awful.keyboard.append_global_keybindings({
  awful.key({}, 'XF86AudioRaiseVolume', function()
    -- TODO!
    -- increase screen brightness
  end, {
    description = 'increase volume',
    group = 'multimedia',
  }),
  awful.key({}, 'XF86AudioLowerVolume', function()
    -- TODO!
    -- increase screen brightness
  end, {
    description = 'decrease volume',
    group = 'multimedia',
  }),
  awful.key({}, 'XF86AudioMute', function()
    -- TODO!
    -- increase screen brightness
  end, {
    description = 'mute volume',
    group = 'multimedia',
  }),
})
