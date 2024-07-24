filetype on
syntax on

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf' 
Plug 'junegunn/fzf.vim' 
Plug 'vim-scripts/tagbar'
Plug 'editorconfig/editorconfig-vim'
Plug 'lervag/vimtex'
Plug 'vimwiki/vimwiki'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'github/copilot.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

map <F2> :NERDTreeToggle<CR>
map <F3> :Files<CR>
map <F4> :Ag<CR>
map <F8> :TagbarToggle<CR>

set ruler
set ic
set is
set clipboard=unnamed
set hlsearch

let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
"let g:pymode_lint = 1
"let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
"let g:pymode_lint_write = 1

" Support virtualenv
"let g:pymode_virtualenv = 1

" syntax highlighting
"let g:pymode_syntax = 1
"let g:pymode_syntax_all = 1
"let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
"let g:pymode_folding = 0

filetype plugin on
set omnifunc=syntaxcomplete#Complete

"let g:solarized_termcolors=256
"colorscheme solarized
set background=dark
colorscheme catppuccin_mocha
set termguicolors
set number

set backupdir=~/.vim/backup_files/
set directory=~/.vim/swap_files/
set undodir=~/.vim/undo_files/

inoremap <C-space> <C-x><C-o>

let g:black_virtualenv = "~/.black-venv/"


imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
