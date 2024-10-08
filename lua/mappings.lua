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

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
