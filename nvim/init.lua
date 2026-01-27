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
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

vim.lsp.enable({'lua_ls','ruff'})

vim.o.termguicolors = true
vim.cmd("colorscheme vague")

vim.api.nvim_create_user_command(
		"Ruff",
		function()
				vim.lsp.buf.code_action {
						context = {
								only = { 'source.fixAll.ruff' }
						},
						apply = true,
				}
				vim.lsp.buf.format { async = true }
		end,
		{ desc = "Reformat python with ruff" }
)

vim.g.clipboard = {
		name = 'WslClipboard',
		copy = {
				['+'] = 'clip.exe',
				['*'] = 'clip.exe',
		},
		paste = {
				['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
				['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
		},
		cache_enabled = 0,
}
