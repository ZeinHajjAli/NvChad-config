-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.mason = {
  pkgs = {
    "mypy",
    "ruff",
    "pyright",
    "black",
    "debugpy",
    "tailwindcss-language-server",
    "typescript-language-server",
    "eslint-lsp",
    "prettierd",
    "js-debug-adapter",
    "gopls",
    "gofumpt",
    "goimports-reviser",
    "golines",
    "delve",
    "nil",
  },
}

M.base46 = {
  theme = "catppuccin",
}

M.ui = {
  tabufline = {
    order = { "buffers", "tabs", "btns", "treeOffset" },
  },
}

-- M.nvdash = {
--   load_on_startup = true,
--   header = {
--     " ███████████           ███             █████   █████                ███       ███    █████████   ████   ███ ",
--     "░█░░░░░░███           ░░░             ░░███   ░░███                ░░░       ░░░    ███░░░░░███ ░░███  ░░░  ",
--     "░     ███░    ██████  ████  ████████   ░███    ░███   ██████       █████     █████ ░███    ░███  ░███  ████ ",
--     "     ███     ███░░███░░███ ░░███░░███  ░███████████  ░░░░░███     ░░███     ░░███  ░███████████  ░███ ░░███ ",
--     "    ███     ░███████  ░███  ░███ ░███  ░███░░░░░███   ███████      ░███      ░███  ░███░░░░░███  ░███  ░███ ",
--     "  ████     █░███░░░   ░███  ░███ ░███  ░███    ░███  ███░░███      ░███      ░███  ░███    ░███  ░███  ░███ ",
--     " ███████████░░██████  █████ ████ █████ █████   █████░░████████     ░███      ░███  █████   █████ █████ █████",
--     "░░░░░░░░░░░  ░░░░░░  ░░░░░ ░░░░ ░░░░░ ░░░░░   ░░░░░  ░░░░░░░░      ░███      ░███ ░░░░░   ░░░░░ ░░░░░ ░░░░░ ",
--     "                                                               ███ ░███  ███ ░███                           ",
--     "                                                              ░░██████  ░░██████                            ",
--     "                                                               ░░░░░░    ░░░░░░                              ",
--   },
-- }

return M
