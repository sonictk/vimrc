" Basic formatting settings
set listchars=tab:»·,trail:·
set list
" Turn on line numbering
set number
syntax on
colorscheme monokai

" Enable folding
set foldmethod=indent
set foldlevel=99

" Adds proper PEP-8 settings for Python files
au BufNewFile,BufRead *.py,*.js,*.html,*.css
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Settings for Markdown-formatted files
au BufNewFile,BufRead *.md
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Settings for C/C++ files
autocmd BufNewFile,BufRead *.c,*.cpp,*.h,*.hpp
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set noexpandtab |
    \ set autoindent |
    \ set fileformat=unix

" Add F5 binding for deleting trailing whitespace
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" Automatically open SCons files with Python syntax highlighting
autocmd BufReadPre SConstruct set filetype=python
autocmd BufReadPre SConscript set filetype=python

" Automatically refresh syntax highlighting
autocmd BufEnter,InsertLeave * :syntax sync fromstart

" Set correct path for exuberant ctags
let g:Tlist_Ctags_Cmd='/usr/bin/ctags'
