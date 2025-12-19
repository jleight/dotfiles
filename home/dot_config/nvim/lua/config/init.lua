-- Show line numbers
vim.wo.number = true

-- Fix uppercase commands
vim.cmd(":command! WQ wq")
vim.cmd(":command! Wq wq")
vim.cmd(":command! W w")
vim.cmd(":command! Q q")

-- Set leader keys
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

-- File browser keybinds
vim.keymap.set("n", "<leader>fb", ":Telescope file_browser<CR>")
