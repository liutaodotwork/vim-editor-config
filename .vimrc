execute pathogen#infect()
"""""""""""""""""""""""""""""""""""""""Basic"""""""""""""""""""""""""""""""""""""""""""
" no vi defaults
set nocompatible 

" no backup
set nobackup

" default encoding as UTF-8
set encoding=utf8
set fileencoding=utf8
set fileformat=unix

" show line numbers
set number

" show line and column number
set ruler

" turn on syntax highlighting
syntax enable
syntax on
filetype on
filetype plugin on
filetype indent on

set autoindent
set history=400
set backspace=indent,eol,start
set ofu=syntaxcomplete#Complete

" swithing buffers
:nnoremap <F5> :buffers<CR>:buffer<Space>
:nnoremap <F2> :tprevious<CR>
:nnoremap <F3> :tnext<CR>

"""""""""""""""""""""""""""""""""""""""Whitespace""""""""""""""""""""""""""""""""""""""
" wrap lines
set wrap

" use spaces, not tabs
set expandtab

" a tab is four spaces
set tabstop=4

" an autoindent (with <<) is four spaces
set shiftwidth=4
"set textwidth=110


"""""""""""""""""""""""""""""""""""""""Search""""""""""""""""""""""""""""""""""""""""""
" highlight matches
set hlsearch

" incremental searching
set incsearch

" searches are case insensitive...
set ignorecase

"""""""""""""""""""""""""""""""""""""""GUI"""""""""""""""""""""""""""""""""""""""""""""
" do not display the donate message when launched
set shortmess=atI

" remove the tool bar and menu bar
set go-=m
set go-=T

if has('gui_running')
    "colorscheme torte
    "colorscheme industry
    colorscheme zellner
    "colorscheme darkblue
    "colorscheme default
    "colorscheme solarized
    "colorscheme evening
    "colorscheme desert

    "set background=dark

    set guifont=Hermit\ medium:h10
    "set guifont=Monaco\:h11
else
    "set background=dark
endif

set vb t_vb=

"""""""""""""""""""""""""""""""""""""""Plugins"""""""""""""""""""""""""""""""""""""""""
map <F8> :NERDTreeToggle<CR>

"ctrlp
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=80
" Make CtrlP faster by making it skip files inside .gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"snipMate
au BufRead,BufNewFile *.php set ft=php.html.javascript.css

let g:vim_markdown_folding_disabled=1

"""""""""""""""""""""""""""""""""New Extensions""""""""""""""""""""""
autocmd BufNewFile,BufRead *.wxss set syntax=css
autocmd BufNewFile,BufRead *.wxml set syntax=html
