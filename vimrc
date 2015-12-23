" Neobundle
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
   set nocompatible " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim' " Let NeoBundle manage NeoBundle (required)

" Solarized
NeoBundle 'altercation/vim-colors-solarized'

" Status bar plugins
NeoBundle 'bling/vim-airline'

" NerdTree
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'

" NerdCommenter
NeoBundle 'scrooloose/nerdcommenter'

" Numbers
NeoBundle 'myusuf3/numbers.vim'

" Syntax checking"
NeoBundle 'scrooloose/syntastic'

" Tab completion
NeoBundle 'ervandew/supertab'

" Ctrl-p
NeoBundle 'ctrlpvim/ctrlp.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" General Settings
set number
syntax enable
set backspace=indent,eol,start
let mapleader="\<Space>"
" map<Space>=<leader> https://www.reddit.com/r/vim/comments/1vdrxg/space_is_a_big_key_what_do_you_map_it_to/
set timeoutlen=1000 ttimeoutlen=0 "http://www.johnhawthorn.com/2012/09/vi-escape-delays/
nnoremap <leader>w :w!<cr>

" Tabs and indenting
set tabstop=4
set shiftwidth=4
set expandtab
set ts=4
set autoindent
set showmatch
let python_highlight_all = 1

" For html files
autocmd Filetype html setlocal ts=2 sw=2 expandtab

" Swap files
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

" Solarized
if filereadable(expand("~/.vim/bundle/vim-colors-solarized/colors/solarized.vim"))
    set background=dark
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
    let g:solarized_contrast="normal"
    let g:solarized_visibility="normal"
    color solarized
endif

" Airline
let g:airline_theme = 'solarized'
set laststatus=2 "shows airline all the time
let g:airline_theme = 'solarized' "TODO, delete

" NerdTree
nnoremap <leader>ne :NERDTreeToggl<cr>

" Numbers
highlight clear LineNr " Current line number row will have same background color in relative mode
set cursorline " Highlight current line

" Supertab
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE

" Syntastic
highlight clear SignColumn " SignColumn should match background
