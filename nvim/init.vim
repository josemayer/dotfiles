noremap <F1> :source ~/.config/nvim/init.vim

call plug#begin('~/.config/nvim/plugins')

	Plug 'itchyny/lightline.vim'
	Plug 'arcticicestudio/nord-vim'
	Plug 'uiiaoo/java-syntax.vim'
	Plug 'daeyun/vim-matlab'
	Plug 'github/copilot.vim'
	Plug 'PontusPersson/pddl.vim'
	Plug 'neo4j-contrib/cypher-vim-syntax'
	Plug 'ggandor/lightspeed.nvim'
	Plug 'lervag/vimtex'
	Plug 'gpanders/editorconfig.nvim'

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
colorscheme nord

let g:lightline = {'colorscheme': 'wombat'}

