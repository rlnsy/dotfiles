" See https://realpython.com/vim-and-python-a-match-made-in-heaven/
" Begin

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'preservim/nerdtree'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'dense-analysis/ale'
Plugin 'preservim/nerdcommenter'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1 " show docstrings

au BufNewFile,BufRead *.py set tabstop=4 | set softtabstop=4 | set shiftwidth=4 | set textwidth=79 | set expandtab | set autoindent | set fileformat=unix

highlight BadWhitespace ctermbg=grey guibg=grey
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8
" End


Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'wakatime/vim-wakatime'
Plugin 'fatih/vim-go'

inoremap jj <esc>
inoremap jk <esc>

" Syntax Highlighting
syntax on

" Enter inserts newline even when not in INSERT
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

set number
"set expandtab
set tabstop=4

nmap <F2> :NERDTree<CR> 

nmap q :q<CR>
xmap q :q<CR>


nmap ff :FZF<CR> 
nmap rr :Rg<CR> 
nmap tt :NERDTree<CR> 


let g:ale_fixers = ['eslint']
let g:ale_fix_on_save = 0

