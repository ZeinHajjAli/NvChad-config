local plugin_mappings = {}

plugin_mappings = {
  dap_python = {
    {
      mode = "n",
      keybinding = "<leader>dr",
      action = function()
        require("dap-python").test_method()
      end,
      desc = "Dap Python: Test nearest method",
    },
  },
  dap_go = {
    {
      mode = "n",
      keybinding = "<leader>dr",
      action = function()
        require("dap-go").debug_test()
      end,
      desc = "Dap Go: Test nearest method",
    },
    {
      mode = "n",
      keybinding = "<leader>dl",
      action = function()
        require("dap-go").debug_last()
      end,
      desc = "Dap Go: Rerun last method",
    },
  },
  nvim_dap = {
    {
      mode = "n",
      keybinding = "<leader>db",
      action = "<cmd>DapToggleBreakpoint<CR>",
      desc = "Dap: Toggle Breakpoint",
    },
    {
      mode = "n",
      keybinding = "<leader>dr",
      action = "<cmd>DapContinue<CR>",
      desc = "Dap: Run or continue debugger",
    },
  },
  venv_selector = {
    {
      mode = "n",
      keybinding = "<leader>vs",
      action = "<cmd>VenvSelect<CR>",
      desc = "Venv Selector: Select Venv",
    },
  },
}

return plugin_mappings

-- dap-python keybindings
-- map("n", "<leader>dpr", function()
--   require("dap-python").test_method()
-- end, { desc = "Dap Python: Test Nearest Method" })
--
-- -- dap-go keybindings
-- map("n", "<leader>dgr", function()
--   require("dap-go").debug_test()
-- end, { desc = "Dap Go: Test Nearest Method" })
--
-- map("n", "<leader>dgl", function()
--   require("dap-go").debug_last()
-- end, { desc = "Dap Go: Test Nearest Method" })
--
-- -- nvim-dap keybindings
-- map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Dap: Toggle Breakpoint" })
-- -- map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Dap: Run or continue debugger" })
--
-- -- venv-selector keybindings
-- map("n", "<leader>vs", "<cmd>VenvSelect<cr>", { desc = "Venv Selector: Select Venv" })
