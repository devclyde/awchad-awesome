local ok, result = pcall(require, 'awchad')

AWCHAD_MODIFIER = os.getenv('AWCHAD_MODIFIER') or 'Mod4'

if not ok then
  error(result)
end
