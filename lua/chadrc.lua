-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
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
    "typescript-language-server",
    "eslint-lsp",
    "prettierd",
    "js-debug-adapter",
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

M.nvdash = {
  load_on_startup = true,
  header = {
    " ███████████           ███             █████   █████                ███       ███    █████████   ████   ███ ",
    "░█░░░░░░███           ░░░             ░░███   ░░███                ░░░       ░░░    ███░░░░░███ ░░███  ░░░  ",
    "░     ███░    ██████  ████  ████████   ░███    ░███   ██████       █████     █████ ░███    ░███  ░███  ████ ",
    "     ███     ███░░███░░███ ░░███░░███  ░███████████  ░░░░░███     ░░███     ░░███  ░███████████  ░███ ░░███ ",
    "    ███     ░███████  ░███  ░███ ░███  ░███░░░░░███   ███████      ░███      ░███  ░███░░░░░███  ░███  ░███ ",
    "  ████     █░███░░░   ░███  ░███ ░███  ░███    ░███  ███░░███      ░███      ░███  ░███    ░███  ░███  ░███ ",
    " ███████████░░██████  █████ ████ █████ █████   █████░░████████     ░███      ░███  █████   █████ █████ █████",
    "░░░░░░░░░░░  ░░░░░░  ░░░░░ ░░░░ ░░░░░ ░░░░░   ░░░░░  ░░░░░░░░      ░███      ░███ ░░░░░   ░░░░░ ░░░░░ ░░░░░ ",
    "                                                               ███ ░███  ███ ░███                           ",
    "                                                              ░░██████  ░░██████                            ",
    "                                                               ░░░░░░    ░░░░░░                              ",
  },
}

return M
