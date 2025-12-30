return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
  },
  event = "VeryLazy",
  config = function()
    require("mason").setup()

    require("mason-lspconfig").setup({
      ensure_installed = {
        "bashls",
        "cssls",
        "html",
        "lua_ls",
        "jdtls",
        "jsonls",
        "marksman",
        "quick_lint_js",
        "yamlls",
      },
    })

    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local on_attach = function(client, bufnr)
      -- Keymaps or LSP options can go here
    end

    -- Fallback manual setup since setup_handlers is missing
    local servers = require("mason-lspconfig").get_installed_servers()
    for _, server_name in ipairs(servers) do
      if server_name ~= "jdtls" then
        lspconfig[server_name].setup({
          capabilities = capabilities,
          on_attach = on_attach,
        })
      end
    end
  end,
}
