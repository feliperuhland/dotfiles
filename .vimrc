set nocompatible
filetype on
syntax on

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/python.vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf.vim' 
Plug 'majutsushi/tagbar'
Plug 'editorconfig/editorconfig-vim'
Plug 'lervag/vimtex'
Plug 'ycm-core/YouCompleteMe'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

map <F2> :NERDTreeToggle<CR>
map <F3> :Files<CR>
map <F4> :Ag<CR>
map <F8> :TagbarToggle<CR>

filetype plugin on
set omnifunc=syntaxcomplete#Complete

set background=dark
let g:solarized_termcolors=256
colorscheme solarized
set number

set backupdir=~/.vim/backup_files/
set directory=~/.vim/swap_files/
set undodir=~/.vim/undo_files/

inoremap <C-space> <C-x><C-o>
i
