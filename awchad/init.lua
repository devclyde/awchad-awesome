require('awchad.wm-events')

awesome.emit_signal('wm::pre_setup')

require('awchad.signals.naughty')
require('awchad.signals.ruled.client')
require('awchad.signals.ruled.notification')
require('awchad.signals.tag')

require('awchad.mappings.global.mouse')

require('awchad.mappings.global.keyboard.general')
require('awchad.mappings.global.keyboard.monitor')
require('awchad.mappings.global.keyboard.multimedia')
require('awchad.mappings.global.keyboard.focus')
require('awchad.mappings.global.keyboard.layout')
require('awchad.mappings.global.keyboard.workspaces')
require('awchad.mappings.global.keyboard.tags')

awesome.emit_signal('wm::post_setup')

---@type table
awesome = awesome
---@type table
screen = screen
---@type table
client = client
---@type table
tag = tag
