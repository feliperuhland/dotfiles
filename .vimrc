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
Plugin 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'prettier/vim-prettier'
Plugin 'majutsushi/tagbar'
Plugin 'c.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'posva/vim-vue'
Plugin 'psf/black'
Plugin 'rust-lang/rust.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'itchyny/lightline.vim'
" Plugin 'Shougo/deoplete.nvim'
" Plugin 'roxma/nvim-yarp'
" Plugin 'roxma/vim-hug-neovim-rpc'
"Plugin 'ftplugin/go.vim'
Plugin 'vimwiki/vimwiki'


" The bundles you install will be listed here
call vundle#end()

filetype plugin indent on

autocmd FileType xhtml,html,js set shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType vue set shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType yml,yaml set shiftwidth=2 softtabstop=2 tabstop=2
" autocmd FileType go set shiftwidth=4 softtabstop=4 tabstop=4

map <F2> :NERDTreeToggle<CR>
map <F3> :Files<CR>
map <F4> :Ag<CR>
map <F8> :TagbarToggle<CR>
nnoremap <F9> :Black<CR>

set laststatus=2
set noshowmode
set ic
set is

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
" let g:syntastic_python_checkers=['mypy']

" Teste com statusline
set wildmode=longest,list,full
set wildmenu

set autowrite

let g:go_def_mode = 'godef'
"let g:go_info_mode = 'gopls'
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

let g:go_auto_type_info = 1

au filetype go inoremap <buffer> . .<C-x><C-o>
" 
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
" 
au FileType go inoremap {<cr> {<cr>}<esc>O
inoremap <C-space> <C-x><C-o>
imap <C-@> <C-Space>


" The rest of your config follows here
"
let g:jsx_ext_required = 1 " Allow JSX in normal JS files

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:black_virtualenv = "~/.black-venv/"
"let g:deoplete#enable_at_startup = 1
"let g:go_debug = ['gopls']
"
au FileType go setlocal omnifunc=go#complete#Complete
