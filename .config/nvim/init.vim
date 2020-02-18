set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

:syntax on

:set relativenumber
:set nu

:set expandtab
:set shiftwidth=4
:set softtabstop=4

hi Normal guibg=NONE ctermbg=NONE

call plug#begin()

Plug 'calviken/vim-gdscript3'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvie/vim-ini'

call plug#end()

:syntax on

:set relativenumber
:set nu

:set expandtab
:set shiftwidth=4
:set softtabstop=4

" hi Normal guibg=NONE ctermbg=NONE

:colo gruvbox
let g:rainbow_active = 1

" Keybinds

map <C-n> :NERDTreeToggle<CR>

