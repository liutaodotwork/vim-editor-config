execute pathogen#infect()
"""""""""""""""""""""""""""""""""""""""Basic"""""""""""""""""""""""""""""""""""
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


"""""""""""""""""""""""""""""""""""""""Whitespace"""""""""""""""""""""""""""""""
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

    set guifont=Hermit\ medium:h11
    "set guifont=Monaco\:h11
endif

set vb t_vb=


"""""""""""""""""""""""""""""""""""""""Plugins"""""""""""""""""""""""""""""""""""""""""

"NERDTree
"""""""""""""""""""""""""""""""""""""""

nnoremap <leader>n :NERDTreeToggle<CR>


"fzf
"""""""""""""""""""""""""""""""""""""""

" If installed using Homebrew
set rtp+=/usr/local/opt/fzf

" If installed using git
"set rtp+=~/.fzf

nnoremap <leader>o :FZF -i<CR>


"vim-snipmate
"""""""""""""""""""""""""""""""""""""""

au BufRead,BufNewFile *.php set ft=php.html.javascript.css


"vim-markdown
"""""""""""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled=1

"ask with the_silver_searcher
"""""""""""""""""""""""""""""""""""""""

" If installed using Homebrew
set rtp+=/usr/local/opt/ag

if executable('ag')
    let g:ackprg = 'ag --nogroup --nocolor --column'
endif
cnoreabbrev Ack Ack!
nnoremap <leader>s :Ack!<Space>
nnoremap <leader>c :Ack! "\b<C-R><C-W>\b"<CR>


" ============================================================================
" New File Extensions
" ============================================================================
autocmd BufNewFile,BufRead *.wxss set syntax=css
autocmd BufNewFile,BufRead *.wxml set syntax=html
