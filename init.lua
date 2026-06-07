vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
require("config.visuals")
require("config.diagnostics")
require("config.lazy")

require('lspconfig').clangd.setup({
    cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        "--query-driver=/opt/homebrew/bin/g++*,/opt/homebrew/bin/gcc*"
    },
})

--Set mapleader to the Space bar before lazy loads
vim.g.mapleader = " "
vim.g.maplocalleader = " "
--Import the lazy.nvim configuration file
require("config.lazy")
