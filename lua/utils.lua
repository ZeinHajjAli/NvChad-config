local M = {}

M.load_mappings = function(plugin_key)
  local map = vim.keymap.set
  local mappings_table = require "configs.mappings"

  if mappings_table[plugin_key] then
    for _, mapping_table in ipairs(mappings_table[plugin_key]) do
      map(mapping_table.mode, mapping_table.keybinding, mapping_table.action, { desc = mapping_table.desc })
    end
  end
end

return M
