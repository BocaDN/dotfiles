return {
  "jose-elias-alvarez/null-ls.nvim", -- OR "stevearc/conform.nvim"
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettier.with({
          filetypes = { "typescript", "typescriptreact", "html" }
        }),
      },
    })

    -- Autoformat on save
    vim.cmd [[autocmd BufWritePre *.tsx,*.ts lua vim.lsp.buf.format({ async = false })]]
  end

}
