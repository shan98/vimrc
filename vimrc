" Basic vimrc
set nocompatible              " be iMproved, required
filetype off                  " required

" Install vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'flazz/vim-colorschemes'
Plugin 'VundleVim/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-rooter'
Plugin 'henrik/vim-qargs'
Plugin 'bkad/CamelCaseMotion'
Plugin 'tpope/vim-surround'

call vundle#end()
filetype plugin indent on    " required

syntax on

set hidden
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set history=700
set autoread
set so=7
set wildmenu
set ruler
set cmdheight=2
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
syntax enable
set encoding=utf8
set smarttab
set ai "Auto indent
set si "Smart indent
set cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
hi CursorLine   cterm=NONE ctermbg=darkgrey guibg=black 
colorscheme alduin

" Auto remove trailing white space
autocmd BufWritePre *.rb :%s/\s\+$//e

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
     
" Remember info about open buffers on close
set viminfo^=%

" Always show the status line
set laststatus=2

" Format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

set number

" More natural splits
set splitbelow
set splitright

" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_y = 0

" Ack config
let g:ackhighlight = 1

" CtrlP config
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = '<c-e>'
let g:ctrlp_cmd = 'CtrlP'

" Keymaps
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-t> :NERDTreeToggle<CR>

" Rooter config
let g:rooter_patterns = ['Rakefile', '.git/']

" CamelCaseMotion config
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge
