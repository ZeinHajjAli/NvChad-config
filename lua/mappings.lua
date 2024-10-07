require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- vim tmux navigator settings
map({ "n", "i", "v" }, "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Window Left" })
map({ "n", "i", "v" }, "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Window Right" })
map({ "n", "i", "v" }, "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Window Down" })
map({ "n", "i", "v" }, "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Window Up" })

-- dap-python keybindings
map("n", "<leader>dpr", function()
  require("dap-python").test_method()
end, { desc = "Dap Python: Test Nearest Method" })

-- nvim-dap keybindings
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Dap: Toggle Breakpoint" })
-- map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Dap: Run or continue debugger" })

-- venv-selector keybindings
map("n", "<leader>vs", "<cmd>VenvSelect<cr>", { desc = "Venv Selector: Select Venv" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
