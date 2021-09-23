noremap <F1> :source ~/.config/nvim/init.vim<CR>

call plug#begin('~/.config/nvim/plugins')

	Plug 'itchyny/lightline.vim'
	Plug 'arcticicestudio/nord-vim'
	Plug 'uiiaoo/java-syntax.vim'
	Plug 'daeyun/vim-matlab'  

call plug#end()

noremap <C-y> "+y
noremap <C-p> "+p
noremap <C-a> ggvG

set nu
colorscheme nord

let g:lightline = {'colorscheme': 'wombat'}

