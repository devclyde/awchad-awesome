AWCHAD_MODIFIER = 'Mod4'

local ok, result = pcall(require, 'awchad')

if not ok then
  error(result)
end
