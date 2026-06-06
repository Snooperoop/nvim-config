return {
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },

    config = function()
      require("mason").setup()

      require("mason-lspconfig").setup({
        ensure_installed = {
          "ts_ls",
          "html",
          "cssls",
          "lua_ls",
        },
      })

      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.config("ts_ls", {
        capabilities = capabilities,
      })

      vim.lsp.config("html", {
        capabilities = capabilities,
      })

      vim.lsp.config("cssls", {
        capabilities = capabilities,
      })

      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
      })

      vim.lsp.enable({
        "ts_ls",
        "html",
        "cssls",
        "lua_ls",
      })
    end,
  },
}



