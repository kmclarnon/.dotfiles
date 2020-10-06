"-------------------------------------------------------------
" Plugin Setup
"-------------------------------------------------------------

" Install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Load plugins here

Plug 'habamax/vim-godot'

" Initialize loaded plugins
call plug#end()

"-------------------------------------------------------------
" General Settings
"-------------------------------------------------------------
syntax enable

set nowrap				" Don't wrap lines
set clipboard+=unnamed			" Yank and past with the system clipboard
set nobackup				" No need for backups
set nowb				" No autobackup
set noswapfile				" No swap

"------------------------------------------------------------------------------
" Key remaps
"------------------------------------------------------------------------------
