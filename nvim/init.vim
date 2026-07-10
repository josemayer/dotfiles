noremap <F1> :source ~/.config/nvim/init.vim

call plug#begin('~/.config/nvim/plugins')

	Plug 'itchyny/lightline.vim'
	Plug 'ggandor/lightspeed.nvim'
	Plug 'tyrannicaltoucan/vim-deep-space'
	Plug 'lervag/vimtex'
	    let g:tex_flavor='latex'
	    let g:vimtex_view_method='zathura'
	    let g:vimtex_quickfix_mode=0
	    let g:vimtex_view_forward_search_on_start=0	
	Plug 'gpanders/editorconfig.nvim'
	Plug 'nvim-treesitter/nvim-treesitter', {'branch': 'master', 'do': ':TSUpdate'}
	Plug 'prettier/vim-prettier', {
		\ 'do': 'yarn install --frozen-lockfile --production',
		\ 'for': ['javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html', 'tex', 'md', 'python'],
		\ }
	Plug 'f-person/git-blame.nvim'

call plug#end()

noremap <C-y> "+y
noremap <C-p> "+p
noremap <C-a> ggVG
noremap <C-f> /
noremap <C-h> :%s/

" Coding style configs
:set tabstop=2
:set shiftwidth=2
:set expandtab

" Color config
set nu
set termguicolors
colorscheme deep-space

" Blame config
let g:gitblame_enabled = 0
noremap <C-l> :GitBlameToggle<CR>

" Prettier config 
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" Lightline config
let g:lightline = {
	\ 'colorscheme': 'deepspace',
	\ 'active' : {
	\	'left': [ [ 'mode', 'paste' ],
	\		  [ 'gitonly', 'readonly', 'filename', 'modified' ] ],
	\ },
	\ 'component_function': {
	\	  'gitbranch': 'fugitive#head',
	\	  'filename': 'LightlineFilename',
	\ },
	\ }

lua require('config/treesitter')
