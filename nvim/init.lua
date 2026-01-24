vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.signcolumn = "yes"
vim.opt.winborder = "rounded"

vim.g.mapleader = " "

vim.keymap.set('n', '<leader>0', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

vim.pack.add({
	{ src = "https://github.com/vague-theme/vague.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
})

vim.lsp.enable('lua_ls')

vim.cmd("colorscheme vague")
