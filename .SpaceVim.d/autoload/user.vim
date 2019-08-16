scriptencoding utf-8
set encoding=utf-8

function! user#before() abort

endfunction

function! user#after() abort
	au FileType c set ts=8 sts=8 sw=8
	au FileType css set ts=2 sts=2 sw=2 et
	let g:omni_sql_no_default_maps = 1
	set spell
	set ruler
	set mouse=r
	set list!
	set lcs=tab:→\ ,nbsp:·,trail:•,extends:»,precedes:«,eol:⏎
	set cc=80,100
	highlight cc ctermbg=0
endfunction
