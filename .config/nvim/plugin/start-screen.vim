let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
  \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
  \ { 'type': 'files',     'header': ['   Files']            },
  \ { 'type': 'sessions',  'header': ['   Sessions']       },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ ]

let g:startify_bookmarks = [
  \ { 'n': '~/.config/nvim/init.vim' },
  \ { 'z': '~/.zshrc' },
  \ { 'w': '~/workspace' },
  \ ]

let g:startify_session_autoload = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

