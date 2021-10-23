let g:netrw_browse_split=0
let g:netrw_banner=0
let g:netrw_winsize=25
let g:netrw_localrmdir='rm -r'
let g:netrw_http_cmd='open'

" open files from netrw in a previous window, unless we're opening the current dir
if argv(0) == '.'
  let g:netrw_browse_split=0
else
  let g:netrw_browse_split=4
endif

