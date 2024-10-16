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
  rust_crates = {
    {
      mode = "n",
      keybinding = "<leader>rcu",
      action = function()
        require("crates").upgrade_all_crates()
      end,
      desc = "Crates: Update all crates",
    },
  },
}

return plugin_mappings
