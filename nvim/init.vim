:set tabstop=2
:set shiftwidth=2
:set expandtab
noremap <F1> :source ~/.config/nvim/init.vim<CR>

call plug#begin('~/.config/nvim/plugins')

	Plug 'itchyny/lightline.vim'
	Plug 'arcticicestudio/nord-vim'
	Plug 'uiiaoo/java-syntax.vim'
	Plug 'daeyun/vim-matlab'  
	Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

call plug#end()

noremap <C-y> "+y
noremap <C-p> "+p
noremap <C-a> ggvG
noremap <C-f> /
noremap <C-h> %s/
noremap <C-=> :Prettier

set nu
colorscheme nord

let g:lightline = {'colorscheme': 'wombat'}

