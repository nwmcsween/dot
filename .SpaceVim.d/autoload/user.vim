func! user#before() abort
  let g:omni_sql_no_default_maps = 1
  let g:ale_c_parse_makefile = 1
endf

func! user#after() abort
  au Filetype c setl noet ts=8 sts=8 sw=8 
endf
