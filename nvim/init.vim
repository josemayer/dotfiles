noremap <F1> :source ~/.config/nvim/init.vim

call plug#begin('~/.config/nvim/plugins')

	Plug 'itchyny/lightline.vim'
	Plug 'tyrannicaltoucan/vim-deep-space'
	Plug 'github/copilot.vim'
	Plug 'PontusPersson/pddl.vim'
	Plug 'neo4j-contrib/cypher-vim-syntax'
	Plug 'ggandor/lightspeed.nvim'
	Plug 'lervag/vimtex'
	    let g:tex_flavor='latex'
	    let g:vimtex_view_method='zathura'
	    let g:vimtex_quickfix_mode=0
	Plug 'gpanders/editorconfig.nvim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

noremap <C-y> "+y
noremap <C-p> "+p
noremap <C-a> ggvG
noremap <C-f> /
noremap <C-h> %s/
noremap <silent> <S-j> :silent! +10<CR>
noremap <silent> <S-k> :silent! -10<CR>
noremap <silent> <S-h> <S-Left>
noremap <silent> <S-l> <S-Right>

set nu
set termguicolors
colorscheme deep-space

let g:lightline = {
      \ 'colorscheme': 'deepspace',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'filename': 'LightlineFilename',
      \ },
      \ }

let g:deepspace_italics=1

augroup vimtex_config
	au!
	au User VimtexEventQuit call vimtex#compiler#clean(0)
augroup END

lua require('config/treesitter')
