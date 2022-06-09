noremap <F1> :source ~/.config/nvim/init.vim

call plug#begin('~/.config/nvim/plugins')

	Plug 'itchyny/lightline.vim'
	Plug 'arcticicestudio/nord-vim'
	Plug 'uiiaoo/java-syntax.vim'
	Plug 'daeyun/vim-matlab'
	Plug 'github/copilot.vim'

call plug#end()

noremap <C-y> "+y
noremap <C-p> "+p
noremap <C-a> ggvG
noremap <C-f> /
noremap <C-h> %s/

set nu
colorscheme nord

let g:lightline = {'colorscheme': 'wombat'}

