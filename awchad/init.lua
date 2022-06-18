require('awchad.wm-events')

awesome.emit_signal('wm::pre_setup')

require('awchad.signals.naughty')
require('awchad.signals.ruled.client')
require('awchad.signals.ruled.notification')
require('awchad.signals.tag')

awesome.emit_signal('wm::post_setup')

---@type table
awesome = awesome
---@type table
screen = screen
---@type table
client = client
---@type table
tag = tag
