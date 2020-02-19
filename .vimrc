
" Plugins will be download under the specified directory.
call plug#begin('~/.vim/plugged')

" declare the list of plugins.
Plug 'vim-syntastic/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'rust-lang/rust.vim'
" Haxe Plugin 
Plug 'jdonaldson/vaxe'
Plug 'kien/ctrlp.vim'
" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" list ends here.
call plug#end()

" NerdTree settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" --------------------------------------------------------
" Basic Settings 
" --------------------------------------------------------
let g:airline_theme='simple'

"let g:deoplete#enable_at_startup = 1

set nocompatible
set encoding=utf-8
set langmenu=zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
language messages zh_CN.utf-8 

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
let mapleader=" "
set expandtab
set softtabstop=2
set shiftwidth=2
set backspace=2
set nobackup
set nowritebackup
set noswapfile
set wrapscan
set history=50
set showcmd
set showmode
set ttyfast
set lazyredraw


" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"set splitbelow
set splitright
set incsearch
set laststatus=2
set autowrite
set modelines=0
set modeline
set report =0

" Number of lines
set number
set ruler

" Make it obvious where 80 characters is
set textwidth=70
set colorcolumn=+1

" Theme & Appearance settings

colorscheme gruvbox
syntax on
filetype on
set autoindent
set smartindent
set cursorline
set guifont=Cascadia_Code:h14
set lines=35 columns=80
