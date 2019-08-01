" basic settings "
set number
set hlsearch
set ignorecase
set incsearch
set clipboard=unnamed
nnoremap n nzzzv
nnoremap N Nzzzv

" Enable folding"
set foldmethod=indent
set foldlevel=99

" Set up plugins using vim-plug"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Support for Bash IDE"
Plug 'WolfgangMehner/bash-support' 

" Help fold Python functions"
Plug 'tmhedberg/SimpylFold'

" Help indent python code"
Plug 'vim-scripts/indentpython.vim'

" Help with te Python color scheme"
Plug 'jnurmine/Zenburn'

" POWERLINEEE"
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" RobotFramework support"
Plug 'mfukar/robotframework-vim'

"Go support"
Plug 'fatih/vim-go'

"Color Scheme"
Plug 'flazz/vim-colorschemes'

" Initialize plugin system

call plug#end()

" Powerline Font path
set rtp+=/home/pepe/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

set rtp=d

colorscheme base16-onedark
