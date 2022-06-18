local awful = require('awful')

return {
  awful.button({}, 4, awful.tag.viewprex),
  awful.button({}, 5, awful.tag.viewnext),
}
