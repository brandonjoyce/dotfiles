--nnoremap <silent> <C-h> <Cmd>NvimTmuxNavigateLeft<CR>
--nnoremap <silent> <C-j> <Cmd>NvimTmuxNavigateDown<CR>
--nnoremap <silent> <C-k> <Cmd>NvimTmuxNavigateUp<CR>
--nnoremap <silent> <C-l> <Cmd>NvimTmuxNavigateRight<CR>
--nnoremap <silent> <C-\> <Cmd>NvimTmuxNavigateLastActive<CR>
--nnoremap <silent> <C-Space> <Cmd>NvimTmuxNavigateNext<CR>


local nvim_tmux_nav = require('nvim-tmux-navigation')

nvim_tmux_nav.setup {
	disable_when_zoomed = true -- defaults to false
}

vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
