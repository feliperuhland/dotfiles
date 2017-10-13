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
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/vimshell')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('artur-shaik/vim-javacomplete2')
  call dein#add('burnettk/vim-angular')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('fatih/vim-go')
  call dein#add('leshill/vim-json')
  call dein#add('majutsushi/tagbar')
  call dein#add('mxw/vim-jsx')
  call dein#add('neomake/neomake')
  call dein#add('nsf/gocode')
  call dein#add('othree/html5.vim')
  call dein#add('pangloss/vim-javascript')
  call dein#add('sbdchd/neoformat')
  call dein#add('scrooloose/nerdtree')
  call dein#add('tpope/vim-markdown')
  call dein#add('tpope/vim-repeat')
  call dein#add('tpope/vim-surround')
  call dein#add('vim-scripts/HTML-AutoCloseTag')
  call dein#add('vim-scripts/django.vim')
  call dein#add('vim-scripts/python.vim')
  call dein#add('vim-scripts/vim-gradle')
  call dein#add('zchee/deoplete-jedi')

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

call neomake#configure#automake('nw', 750)

map <F2> :NERDTreeToggle<CR>
map <F3> :Denite file_rec<CR>
map <F8> :TagbarToggle<CR>
set pastetoggle=<F10>
set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//


" Use deoplete.
let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources#jedi#enable_cache=1

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

" JAVA
nmap <leader>jI <Plug>(JavaComplete-Imports-AddMissing)
nmap <leader>jR <Plug>(JavaComplete-Imports-RemoveUnused)
nmap <leader>ji <Plug>(JavaComplete-Imports-AddSmart)
nmap <leader>jii <Plug>(JavaComplete-Imports-Add)

imap <C-j>I <Plug>(JavaComplete-Imports-AddMissing)
imap <C-j>R <Plug>(JavaComplete-Imports-RemoveUnused)
imap <C-j>i <Plug>(JavaComplete-Imports-AddSmart)
imap <C-j>ii <Plug>(JavaComplete-Imports-Add)

nmap <leader>jM <Plug>(JavaComplete-Generate-AbstractMethods)

imap <C-j>jM <Plug>(JavaComplete-Generate-AbstractMethods)

nmap <leader>jA <Plug>(JavaComplete-Generate-Accessors)
nmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
nmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
nmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)
nmap <leader>jts <Plug>(JavaComplete-Generate-ToString)
nmap <leader>jeq <Plug>(JavaComplete-Generate-EqualsAndHashCode)
nmap <leader>jc <Plug>(JavaComplete-Generate-Constructor)
nmap <leader>jcc <Plug>(JavaComplete-Generate-DefaultConstructor)

imap <C-j>s <Plug>(JavaComplete-Generate-AccessorSetter)
imap <C-j>g <Plug>(JavaComplete-Generate-AccessorGetter)
imap <C-j>a <Plug>(JavaComplete-Generate-AccessorSetterGetter)

vmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
vmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
vmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)

nmap <silent> <buffer> <leader>jn <Plug>(JavaComplete-Generate-NewClass)
nmap <silent> <buffer> <leader>jN <Plug>(JavaComplete-Generate-ClassInFile)

let g:neomake_java_enabled_makers = ['gradle']
let g:neomake_open_list = 2

call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
	      \ [ '.git/', '.ropeproject/', '__pycache__/', '*.class',
	      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])

" The rest of your config follows here
"
let g:jsx_ext_required = 0 " Allow JSX in normal JS files


if dein#check_install()
  call dein#install()
endif

