local awful = require('awful')
local hotkeys_popup = require('awful.hotkeys_popup')

awful.keyboard.append_global_keybindings({
  awful.key({ AWCHAD_MODIFIER }, 's', hotkeys_popup.show_help, {
    description = 'show help',
    group = 'awesome',
  }),
  awful.key({ AWCHAD_MODIFIER, 'Control' }, 'r', awesome.restart, {
    description = 'reload awesome',
    group = 'awesome',
  }),
  awful.key({ AWCHAD_MODIFIER, 'Shift' }, 'q', awesome.quit, {
    description = 'quit awesome',
    group = 'awesome',
  }),
  awful.key({ AWCHAD_MODIFIER }, 'd', function()
    -- TODO!
    -- spawn app launcher
  end, {
    description = 'run app launcher',
    group = 'launcher',
  }),
  awful.key({ AWCHAD_MODIFIER }, 'x', function()
    -- TODO!
    -- spawn command prompt
  end, {
    description = 'run command prompt',
    group = 'launcher',
  }),
  awful.key({ AWCHAD_MODIFIER }, 'Return', function()
    -- TODO!
    -- spawn terminal emulator
  end, {
    description = 'open a terminal',
    group = 'launcher',
  }),
})
