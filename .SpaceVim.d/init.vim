
au BufNewFile,BufRead *.c set ts=2 sts=2 sw=2 ex
au BufNewFile,BufRead *.rb set ts=2 sts=2 sw=2 ex 
au BufNewFile,BufRead *.sh set ts=2 sts=2 sw=2 ex

let mapleader = ","

set nowrap

let g:spacevim_lint_on_the_fly = 1

let g:spacevim_disabled_plugins = [
	\['Rip-Rip/clang_complete'],
	\['justmao945/vim-clang'],
	\['zchee/deoplete-clang'],
	\['tenfyzhong/CompleteParameter'],
	\['tweekmonster/deoplete-clang2'],
	\['neomake/neomake'],
	\['sbdchd/neoformat'],
	\['wsdjeg/syntastic'],
	\['tenfyzhong/CompleteParameter'],
\]

let g:spacevim_custom_plugins = [
    \['hrj/vim-DrawIt']
\]

call SpaceVim#layers#load('lang#c')
call SpaceVim#layers#load('tmux')

let g:spacevim_max_column = 80
let g:spacevim_default_indent = 2
let &colorcolumn=join(range(81,999),",")

