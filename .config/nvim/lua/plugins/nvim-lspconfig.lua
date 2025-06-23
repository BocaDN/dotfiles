return {
  "neovim/nvim-lspconfig",
  event = "VeryLazy",
  config = function()
    local lspconfig = require("lspconfig")

    -- Lua language server setup
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })

    -- ESLint language server setup
    lspconfig.eslint.setup({
      -- Only attach to ts/tsx/js/jsx files
      filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
      on_attach = function(client, bufnr)
        -- Auto-fix on save
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          command = "EslintFixAll",
        })
      end,
      settings = {
        validate = "on",
        packageManager = "npm",
      },
    })

    -- Optional: Floating border styling for all LSP floating windows
    local orig = vim.lsp.util.open_floating_preview
    function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
      opts = opts or {}
      opts.border = opts.border or "rounded"
      return orig(contents, syntax, opts, ...)
    end
  end,
}
