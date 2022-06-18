local awful = require('awful')

awful.keyboard.append_global_keybindings({
  awful.key({ AWCHAD_MODIFIER, 'Shift' }, 'j', function()
    awful.client.swap.byidx(1)
  end, {
    description = 'swap with next client by index',
    group = 'client',
  }),
  awful.key({ AWCHAD_MODIFIER, 'Shift' }, 'k', function()
    awful.client.swap.byidx(-1)
  end, {
    description = 'swap with previous client by index',
    group = 'client',
  }),
  awful.key({ AWCHAD_MODIFIER }, 'u', awful.client.urgent.jumpto, {
    description = 'jump to urgent client',
    group = 'client',
  }),
  awful.key({ AWCHAD_MODIFIER }, 'l', function()
    awful.tag.incmwfact(0.05)
  end, {
    description = 'increase master width factor',
    group = 'layout',
  }),
  awful.key({ AWCHAD_MODIFIER }, 'h', function()
    awful.tag.incmwfact(-0.05)
  end, {
    description = 'decrease master width factor',
    group = 'layout',
  }),
  awful.key({ AWCHAD_MODIFIER, 'Shift' }, 'h', function()
    awful.tag.incnmaster(1, nil, true)
  end, {
    description = 'increase the number of master clients',
    group = 'layout',
  }),
  awful.key({ AWCHAD_MODIFIER, 'Shift' }, 'l', function()
    awful.tag.incnmaster(-1, nil, true)
  end, {
    description = 'decrease the number of master clients',
    group = 'layout',
  }),
  awful.key({ AWCHAD_MODIFIER, 'Control' }, 'h', function()
    awful.tag.incncol(1, nil, true)
  end, {
    description = 'increase the number of columns',
    group = 'layout',
  }),
  awful.key({ AWCHAD_MODIFIER, 'Control' }, 'l', function()
    awful.tag.incncol(-1, nil, true)
  end, {
    description = 'decrease the number of columns',
    group = 'layout',
  }),
  awful.key({ AWCHAD_MODIFIER }, 'space', function()
    awful.layout.inc(1)
  end, {
    description = 'select next',
    group = 'layout',
  }),
  awful.key({ AWCHAD_MODIFIER, 'Shift' }, 'space', function()
    awful.layout.inc(-1)
  end, {
    description = 'select previous',
    group = 'layout',
  }),
})
