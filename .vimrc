execute pathogen#infect()
"""""""""""""""""""""""""""""""""""""""Basic"""""""""""""""""""""""""""""""""""""""""""
set nocompatible      				" no vi defaults
set nobackup
set encoding=utf8    				" default encoding as UTF-8
set fileencoding=utf8
set fileformat=unix
set number            				" show line numbers
set ruler             				" show line and column number
syntax enable						" turn on syntax highlighting
syntax on
filetype on
filetype plugin on
filetype indent on
set autoindent
set history=400
set backspace=indent,eol,start
set ofu=syntaxcomplete#Complete		" autocompletion

" swithing buffers
:nnoremap <F5> :buffers<CR>:buffer<Space>
:nnoremap <F2> :tprevious<CR>
:nnoremap <F3> :tnext<CR>

"""""""""""""""""""""""""""""""""""""""Whitespace""""""""""""""""""""""""""""""""""""""
set wrap                        	" wrap lines
set expandtab                    	" use spaces, not tabs
set tabstop=4                     	" a tab is four spaces
set shiftwidth=4                  	" an autoindent (with <<) is four spaces
"set textwidth=110


"""""""""""""""""""""""""""""""""""""""Search""""""""""""""""""""""""""""""""""""""""""
set hlsearch    					" highlight matches
set incsearch   					" incremental searching
set ignorecase  					" searches are case insensitive...


"""""""""""""""""""""""""""""""""""""""GUI"""""""""""""""""""""""""""""""""""""""""""""
set shortmess=atI					" do not display the donate message when launched
set go-=m							" remove the tool bar and menu bar
set go-=T

if has('gui_running')
    "colorscheme torte
    "colorscheme industry
    "colorscheme zellner
    "colorscheme darkblue
    "colorscheme default
    "colorscheme solarized
    colorscheme evening
    "colorscheme desert

    "set background=dark

    set guifont=Hermit\ medium:h11
    "set guifont=Monaco\:h11
else
    "set background=dark
endif

set vb t_vb=

"""""""""""""""""""""""""""""""""""""""Plugins"""""""""""""""""""""""""""""""""""""""""
map <F8> :NERDTreeToggle<CR>		" map a specific key or shortcut to open NERDTree

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
