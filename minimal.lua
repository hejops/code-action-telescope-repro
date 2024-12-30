-- local lazypath = "/tmp/lazy/lazy.nvim"
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"neovim/nvim-lspconfig",
	"nvim-telescope/telescope.nvim",
	"aznhe21/actions-preview.nvim",
})

require("lspconfig").gopls.setup({})

vim.keymap.set("n", "<space>A", require("actions-preview").code_actions)
