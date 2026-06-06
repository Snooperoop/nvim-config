return {
  {
    "sudormrfbin/cheatsheet.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-lua/popup.nvim",
    },
    cmd = {
      "Cheatsheet",
      "CheatsheetEdit",
    },
    keys = {
      {
        "<leader>cs",
        "<cmd>Cheatsheet<CR>",
        desc = "Open cheatsheet",
      },
      {
        "<leader>ce",
        "<cmd>CheatsheetEdit<CR>",
        desc = "Edit cheatsheet",
      },
    },
    config = function()
      require("cheatsheet").setup({
        bundled_cheatsheets = true,
        bundled_plugin_cheatsheets = true,
        include_only_installed_plugins = true,
      })
    end,
  },
}
