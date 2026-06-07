--[[return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",

    config = function()
      local wk = require("which-key")

      wk.setup({
        delay = 500,
      })

      -- Global toggle states
      vim.g.diagnostics_enabled = true
      vim.g.autocomplete_enabled = true

      -- Toggle diagnostics
      local function toggle_diagnostics()
        vim.g.diagnostics_enabled = not vim.g.diagnostics_enabled

        if vim.g.diagnostics_enabled then
          vim.diagnostic.enable()
          print("Diagnostics enabled")
        else
          vim.diagnostic.disable()
          print("Diagnostics disabled")
        end
      end

      -- Toggle autocomplete
      local function toggle_autocomplete()
        vim.g.autocomplete_enabled = not vim.g.autocomplete_enabled

        local ok, cmp = pcall(require, "cmp")
        if not ok then
          print("nvim-cmp is not installed or not loaded")
          return
        end

        cmp.setup({
          enabled = function()
            return vim.g.autocomplete_enabled
          end,
        })

        if vim.g.autocomplete_enabled then
          print("Autocomplete enabled")
        else
          print("Autocomplete disabled")
        end
      end

      wk.add({
        { "<leader>t", group = "Toggle" },

        {
          "<leader>td",
          toggle_diagnostics,
          desc = "Toggle diagnostics",
        },

        {
          "<leader>ta",
          toggle_autocomplete,
          desc = "Toggle autocomplete",
        },

        { "<leader>c", group = "Cheatsheet" },
        { "<leader>cs", "<cmd>Cheatsheet<CR>", desc = "Open cheatsheet" },
        { "<leader>ce", "<cmd>CheatsheetEdit<CR>", desc = "Edit cheatsheet" },

        { "<leader>w", "<cmd>w<CR>", desc = "Save file" },
        { "<leader>q", "<cmd>q<CR>", desc = "Quit file" },
      })
    end,
  },
}

]]
