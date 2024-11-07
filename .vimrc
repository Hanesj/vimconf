set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/indent/indentpython.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'

call vundle#end()
filetype plugin indent on
set nu

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <SPACE> <Nop>
"Shortcut undo och delete word, redo
inoremap <C-u> <C-o>u
inoremap <C-s> <C-o>daw
inoremap <C-r> <C-o><C-r>

"samma fast i normal mode
nmap <C-u> u
nmap <C-s> daw

let mapleader=" "
nnoremap <leader>f :NERDTreeToggle<CR>

"byta emmet key
let g:user_emmet_global_install=0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key=','

au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
au BufNewFile, BufRead *.js,*.html,*.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
    \ set autoindent


au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g : YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highligt_all=1
syntax on
let g:gruvbox_contrast_dark='medium'
set background=dark
colorscheme gruvbox
