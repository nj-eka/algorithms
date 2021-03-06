set nocompatible              " be iMproved, required
filetype off                  " required
" set thruntime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'rust-lang/rust.vim'
call vundle#end()            " required

filetype plugin indent on    " required

syntax on
set background=dark
colorscheme solarized
set expandtab
set number 
set autoindent
set ruler 
set ignorecase
set smartcase
set hlsearch
set incsearch
set ts=2
set sw=2
set sts=2
set laststatus=2
set mousefocus 
set mouse=a
set backspace=indent,eol,start

"opens a file at the same place I left off at.
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

au filetype cpp nnoremap <F9> :w <bar> exec '!g++ '.shellescape('%').'&& ./a.out'<CR>

"YouCompleteMe
"let g:ycm_extra_conf_globlist = ['~/Training/*']
let g:ycm_global_ycm_extra_conf = '~/Training/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<Enter>']

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" rust.vim
let g:rustfmt_autosave = 1
"let g:syntastic_rust_checkers = ['rustc']

"diable arrow keys in command mode
no <left> <nop>
no <right> <nop>
no <up> <nop>
no <down> <nop>

"disable arrow keys in insert mode
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
ino <down> <Nop>
