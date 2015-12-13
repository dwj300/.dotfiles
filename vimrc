" -----------------------------------------------------------------------------
" important {{{
" -----------------------------------------------------------------------------

if has('vim_starting')
	if &compatible
		set nocompatible
	endif

	" Required
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required
 call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required
NeoBundleFetch 'Shougo/neobundle.vim'

" Colorscheme
NeoBundle 'altercation/vim-colors-solarized'

" File navigation
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'myusuf3/numbers.vim'

" Status bar plugins
NeoBundle 'bling/vim-airline'

" Syntax Checking
NeoBundle 'scrooloose/syntastic'
NeoBundle 'ervandew/supertab'

call neobundle#end()

" Required
filetype plugin indent on
syntax enable

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" }}}

" -----------------------------------------------------------------------------
" moving around, searching and patterns {{{
" -----------------------------------------------------------------------------

set nostartofline
set incsearch
set ignorecase
set smartcase

" Make sure vim returns to the same line when you reopen a file
augroup line_return
	au!
	au BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\     execute 'normal! g`"zvzz' |
	\ endif
augroup END

" }}}

" -----------------------------------------------------------------------------
" tags {{{
" -----------------------------------------------------------------------------

" }}}

" -----------------------------------------------------------------------------
" displaying text {{{
" -----------------------------------------------------------------------------

set backspace=indent,eol,start
"set list
"set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set showbreak=↪
set number
set scrolloff=3
set sidescrolloff=2

" }}}

" -----------------------------------------------------------------------------
" syntax, highlighting and spelling {{{
" -----------------------------------------------------------------------------

set background=dark

silent! colorscheme solarized 

augroup markdown
    au!
    au BufRead,BufNew *.md set filetype=markdown
    au BufRead,BufNewFile *.md setlocal textwidth=80
augroup END

" }}}

" -----------------------------------------------------------------------------
" multiple windows {{{
" -----------------------------------------------------------------------------

set laststatus=2

" }}}

" -----------------------------------------------------------------------------
" multiple tab pages {{{
" -----------------------------------------------------------------------------

" }}}

" -----------------------------------------------------------------------------
" terminal {{{
" -----------------------------------------------------------------------------

set ttyfast

" }}}

" -----------------------------------------------------------------------------
" using the mouse {{{
" -----------------------------------------------------------------------------

" }}}

" -----------------------------------------------------------------------------
" printing {{{
" -----------------------------------------------------------------------------

" }}}

" -----------------------------------------------------------------------------
" messages and info {{{
" -----------------------------------------------------------------------------

set showcmd
set confirm
set ruler

" }}}

" -----------------------------------------------------------------------------
" selecting text {{{
" -----------------------------------------------------------------------------

set clipboard=unnamed

" }}}

" -----------------------------------------------------------------------------
" editing text {{{
" -----------------------------------------------------------------------------

set showmatch

" }}}

" -----------------------------------------------------------------------------
" tabs and indenting {{{
" -----------------------------------------------------------------------------

set tabstop=4
set shiftwidth=4
set expandtab

" }}}

" -----------------------------------------------------------------------------
" folding {{{
" -----------------------------------------------------------------------------
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END

if has('folding')
	set nofoldenable
endif

" }}}

" -----------------------------------------------------------------------------
" diff mode {{{
" -----------------------------------------------------------------------------

" }}}

" -----------------------------------------------------------------------------
" mapping {{{
" -----------------------------------------------------------------------------

let mapleader="\<Space>"

inoremap jk <esc> 
inoremap <esc> <nop>

nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>ne :NERDTreeToggl<cr>

nnoremap <cr> G
nnoremap <bs> gg

nnoremap <Leader>w :w<cr>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>x :wq<cr>

nnoremap <Leader><Leader> V

nnoremap <F3> :NumbersToggle<cr>
nnoremap <F4> :NumbersOnOff<cr>

nnoremap <c-j> <c-d>
nnoremap <c-k> <c-u>

" }}}

" -----------------------------------------------------------------------------
" reading and writing files {{{
" -----------------------------------------------------------------------------

" }}}

" -----------------------------------------------------------------------------
" the swap file {{{
" -----------------------------------------------------------------------------

set backup                        " Enable backups
set noswapfile                    " It's 2013, Vim.

set undodir=~/.vim/tmp/undo//     " Undo files
set backupdir=~/.vim/tmp/backup// " Backups
set directory=~/.vim/tmp/swap//   " Swap files

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
     call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
	call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
	call mkdir(expand(&directory), "p")
endif

" }}}

" -----------------------------------------------------------------------------
" command line editing {{{
" -----------------------------------------------------------------------------

" }}}

" -----------------------------------------------------------------------------
" executing external commands {{{
" -----------------------------------------------------------------------------

" }}}

" -----------------------------------------------------------------------------
" running make and jumping to errors {{{
" -----------------------------------------------------------------------------

" }}}

" -----------------------------------------------------------------------------
" language specific {{{
" -----------------------------------------------------------------------------

" }}}

" -----------------------------------------------------------------------------
" multi-byte characters {{{
" -----------------------------------------------------------------------------

" }}}

" -----------------------------------------------------------------------------
" various {{{
" -----------------------------------------------------------------------------

" Close Vim if the only buffer open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" }}}
