require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>sv", ":vsplit<CR>", { desc = "Split Vertically" })
map("n", "<leader>sh", ":split<CR>", { desc = "Split Horizontally" })

-- vim tmux navigator settings
map({ "n", "i", "v" }, "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Window Left" })
map({ "n", "i", "v" }, "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Window Right" })
map({ "n", "i", "v" }, "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Window Down" })
map({ "n", "i", "v" }, "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Window Up" })

-- gitsigns mappings
map({ "n" }, "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Gitsigns: Preview Hunk" })
map({ "n" }, "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Gitsigns: Toggle Current Line Blame" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
