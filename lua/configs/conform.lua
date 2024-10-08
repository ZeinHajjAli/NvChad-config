local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- python = { "black" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescriptreact = { "prettierd" },
    ss = { "prettierd" },
    html = { "prettierd" },
    go = { "gofumpt", "goimports-reviser", "golines" },
    nix = { "nixfmt" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_format = "fallback",
    async = false,
  },
}

-- require("conform").setup(options)
return options
