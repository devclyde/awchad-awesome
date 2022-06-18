local awful = require('awful')

awful.keyboard.append_global_keybindings({
  awful.key({ AWCHAD_MODIFIER }, 'Left', awful.tag.viewprev, {
    description = 'view previous',
    group = 'workspaces',
  }),
  awful.key({ AWCHAD_MODIFIER }, 'Right', awful.tag.viewnext, {
    description = 'view next',
    group = 'workspaces',
  }),
  awful.key({ AWCHAD_MODIFIER }, 'Escape', awful.tag.history.restore, {
    description = 'go back',
    group = 'workspaces',
  }),
})
