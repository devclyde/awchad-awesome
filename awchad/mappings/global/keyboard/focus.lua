local awful = require('awful')

awful.keyboard.append_global_keybindings({
  awful.key({ AWCHAD_MODIFIER }, 'j', function()
    awful.client.focus.byidx(1)
  end, {
    description = 'focus next by index',
    group = 'client',
  }),
  awful.key({ AWCHAD_MODIFIER }, 'k', function()
    awful.client.focus.byidx(-1)
  end, {
    description = 'focus previous by index',
    group = 'client',
  }),
  awful.key({ AWCHAD_MODIFIER }, 'Tab', function()
    awful.client.focus.history.previous()

    if client.focus then
      client.focus:raise()
    end
  end, {
    description = 'go back',
    group = 'client',
  }),
  awful.key({ AWCHAD_MODIFIER, 'Control' }, 'j', function()
    awful.screen.focus_relative(1)
  end, {
    description = 'focus the next screen',
    group = 'screen',
  }),
  awful.key({ AWCHAD_MODIFIER, 'Control' }, 'k', function()
    awful.screen.focus_relative(-1)
  end, {
    description = 'focus the previous screen',
    group = 'screen',
  }),
  awful.key({ AWCHAD_MODIFIER, 'Control' }, 'n', function()
    local client = awful.client.restore()

    if client then
      client:activate({ raise = true, context = 'key.unminimize' })
    end
  end, {
    description = 'restore minimized',
    group = 'client',
  }),
})
