require'nvim-treesitter.configs'.setup {
	ensure_installed = {
		"bash",
		"css",
		"c",
		"cpp",
		"diff",
		"dockerfile",
		"gitattributes",
		"gitignore",
		"git_config",
		"git_rebase",
		"html",
		"java",
		"javascript",
		"julia",
		"json",
		"kotlin",
		"latex",
		"lua",
		"matlab",
		"python",
		"regex",
		"rust",
		"scss",
		"toml",
		"tsx",
		"typescript",
		"vim",
		"yaml",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false
	},
	indent = {
		enable = true
	},
}
vim.cmd [[highlight def link @text.diff.add DiffAdded]]
vim.cmd [[highlight def link @text.diff.change DiffChanged]]
vim.cmd [[highlight def link @text.diff.delete DiffRemoved]]
