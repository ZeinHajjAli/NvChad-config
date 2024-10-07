-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require "null-ls"

local opts = {
  sources = {
    -- require("none-ls.formatting.ruff"),
    null_ls.builtins.diagnostics.mypy,
    -- require "none-ls.diagnostics.ruff",
    -- require("none-ls.diagnostics.eslint"),
    -- null_ls.builtins.formatting.prettierd,
  },
  -- on_attach = function(client, bufnr)
  --   if client.supports_method "textDocument/formatting" then
  --     vim.api.nvim_clear_autocmds {
  --       group = augroup,
  --       buffer = bufnr,
  --     }
  --     vim.api.nvim_create_autocmd("BufWritePre", {
  --       group = augroup,
  --       buffer = bufnr,
  --       callback = function()
  --         vim.lsp.buf.format { bufnr = bufnr }
  --       end,
  --     })
  --   end
  -- end,
}
return opts
