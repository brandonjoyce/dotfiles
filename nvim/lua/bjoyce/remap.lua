vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Remove search highlighting
vim.keymap.set("n", "<leader>/", vim.cmd.noh)

-- Escape insert mode via 'jj'
vim.keymap.set("i", "jj", "<Esc>")

-- Save/Quit
vim.keymap.set("n", "<leader>w", ":w<Enter>")
vim.keymap.set("n", "<leader>q", ":q<Enter>")

-- Previous Buffer
vim.keymap.set("n", "<leader><leader>", "<C-^>")

