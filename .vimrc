set nocompatible
filetype on
syntax on

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'python.vim'
Plugin 'django.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'othree/html5.vim'
Plugin 'leshill/vim-json'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'HTML-AutoCloseTag'
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'burnettk/vim-angular'
Plugin 'mxw/vim-jsx'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'prettier/vim-prettier'
Plugin 'majutsushi/tagbar'
Plugin 'c.vim'
Plugin 'ctrlpvim/ctrlp.vim'


" The bundles you install will be listed here
call vundle#end()

filetype plugin indent on

autocmd FileType xhtml,html,js set shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType yml,yaml set shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType go set shiftwidth=4 softtabstop=4 tabstop=4

map <F2> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR>
set pastetoggle=<F10>
set backupdir=~/.vim/backup_files/
set directory=~/.vim/swap_files/
set undodir=~/.vim/undo_files/
set clipboard=unnamed

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set number
let g:jedi#use_tabs_not_buffers = 1
set hlsearch

let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:jedi#use_tabs_not_buffers = 1

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Teste com statusline
set wildmode=longest,list,full
set wildmenu

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
" 
" au FileType go nmap <leader>r <Plug>(go-run)
" au FileType go nmap <leader>b <Plug>(go-build)
" au FileType go nmap <leader>t <Plug>(go-test)
" au FileType go nmap <leader>c <Plug>(go-coverage)
" 
inoremap <C-space> <C-x><C-o>
imap <C-@> <C-Space>


" The rest of your config follows here
"
let g:jsx_ext_required = 1 " Allow JSX in normal JS files

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
