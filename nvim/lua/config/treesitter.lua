require'nvim-treesitter.configs'.setup {
	ensure_installed = {
		"bash",
		"c",
		"cpp",
		"diff",
		"dockerfile",
		"gitattributes",
		"gitignore",
		"git_config",
		"git_rebase",
		"java",
		"javascript",
		"julia",
		"json",
		"kotlin",
		"lua",
		"matlab",
		"python",
		"regex",
		"rust",
		"toml",
		"tsx",
		"typescript",
		"vim",
		"yaml",
	},

	ignore_install = {
		"html",
		"vue",
		"css",
		"scss",
		"latex",
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
