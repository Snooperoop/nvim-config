-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("neo-tree").setup({
        filesystem = {
          window = {
            mappings = {
              ["<cr>"] = "open",
              ["t"] = "open_tabnew",
              ["s"] = "open_split",
              ["v"] = "open_vsplit",
            },
          },
        },
      })

      vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", {
        noremap = true,
        silent = true,
      })
    end,
  },
}
