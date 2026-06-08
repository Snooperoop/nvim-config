return {
  {
    "akinsho/bufferline.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers", -- shows open files, like browser tabs
          diagnostics = "nvim_lsp",
          separator_style = "slant",
          show_buffer_close_icons = true,
          show_close_icon = true,
        },
      })

      -- Move between open buffers
      vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", {
        noremap = true,
        silent = true,
      })

      vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", {
        noremap = true,
        silent = true,
      })

      -- Close current buffer
      vim.keymap.set("n", "<leader>x", ":bdelete<CR>", {
        noremap = true,
        silent = true,
      })
    end,
  },
}
