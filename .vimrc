set nocompatible               " be iMproved
filetype off                   " required!

syntax on

set showmatch
set matchtime=5
set laststatus=2

set cindent
set cinwords=if,else,while,do,for,switch,case

set ruler

" set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" set unicode
set encoding=utf-8
setglobal fileencoding=utf-8

" key mappings
map <silent> <F12> :set invlist<CR>

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
" Bundle 'Lokaltog/powerline'
Bundle 'bling/vim-airline'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-git'
" Bundle 'anzaika/go.vim'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" Development
Bundle 'jQuery'
Bundle 'rails.vim'
" Syntax highlighting
Bundle 'Markdown'
Bundle 'cucumber.zip'
" Comments
Bundle 'tComment'
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!

" vim mac powerline support configuration
set t_Co=256
" let g:Powerline_symbols='unicode'

" vim airline configuration
let g:airline_enable_fugitive=1
let g:airline_powerline_fonts=0

" unicode symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_linecolumn_prefix = 'ln'
let g:airline_fugitive_prefix = 'f'
let g:airline_paste_symbol = '-~'

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
syntax on
