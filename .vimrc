" Vundle config
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Syntastic'
Plugin 'fugitive.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'Tagbar'




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"start vim-airline config
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
"stop vim-airline config


"start syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_python_flake8_args = '--ignore="E501,F403"'
"stop syntastic config

syntax on
if has("gui_macvim")
    " Switch to specific tab numbers with Command-number
    noremap <D-1> :tabn 1<CR>
    noremap <D-2> :tabn 2<CR>
    noremap <D-3> :tabn 3<CR>
    noremap <D-4> :tabn 4<CR>
    noremap <D-5> :tabn 5<CR>
    noremap <D-6> :tabn 6<CR>
    noremap <D-7> :tabn 7<CR>
    noremap <D-8> :tabn 8<CR>
    noremap <D-9> :tabn 9<CR>
    " Command-0 goes to the last tab
    noremap <D-0> :tablast<CR>
endif

set cursorline
set list
set listchars=tab:↦\ ,trail:»,extends:↷,precedes:↶
"colorscheme molokai
colorscheme gruvbox
set colorcolumn=80
set ruler

" stay in visual mode after indentation
vnoremap < <gv
vnoremap > >gv

let mapleader=" "
noremap <Leader>s :setlocal spell spelllang=en_us<CR>
noremap <Leader>t :call TabToggle()<CR>
noremap <Leader>gb :Gblame<CR>

function! TabToggle ()
    set tabstop=4
    set shiftwidth=4

    if &expandtab
        set noexpandtab
        echo "Tab set to tabs"
    else
        set expandtab
        echo "Tab set to spaces"
    endif
endfunction

let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
