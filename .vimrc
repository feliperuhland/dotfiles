if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/ruhland/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/ruhland/.cache/dein')
  call dein#begin('/home/ruhland/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/ruhland/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('majutsushi/tagbar')
  call dein#add('artur-shaik/vim-javacomplete2')
  call dein#add('sbdchd/neoformat')
  call dein#add('neomake/neomake')
  call dein#add('tpope/vim-markdown')
  call dein#add('tpope/vim-repeat')
  call dein#add('tpope/vim-surround')
  call dein#add('vim-scripts/python.vim')
  call dein#add('vim-scripts/django.vim')
  call dein#add('leshill/vim-json')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('othree/html5.vim')
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('vim-scripts/HTML-AutoCloseTag')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('pangloss/vim-javascript')
  call dein#add('burnettk/vim-angular')
  call dein#add('mxw/vim-jsx')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('fatih/vim-go')
  call dein#add('nsf/gocode')
  call dein#add('vim-syntastic/syntastic')
  call dein#add('altercation/vim-colors-solarized')


  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

autocmd FileType xhtml,html,js set shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType yml,yaml set shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType go set shiftwidth=4 softtabstop=4 tabstop=4
autocmd FileType java setlocal omnifunc=javacomplete#Complete

map <F2> :NERDTreeToggle<CR>
set pastetoggle=<F10>
set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//


" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#enable_cache=1

" use the system-wide python and the python-neovim package
let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'

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
let g:statline_syntastic = 0

" Teste com statusline
set wildmode=longest,list,full
set wildmenu

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

inoremap <C-space> <C-x><C-o>
imap <C-@> <C-Space>

" The rest of your config follows here
"
let g:jsx_ext_required = 0 " Allow JSX in normal JS files


if dein#check_install()
  call dein#install()
endif

