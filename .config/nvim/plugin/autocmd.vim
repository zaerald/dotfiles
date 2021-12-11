if has("autocmd")
  " enable file type detection
  filetype on
  " treat .json files as .js
  autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
  " treat .md files as Markdown
  autocmd BufNewFile,BufRead *.md setlocal filetype=markdown

  autocmd BufNewFile,BufRead *.{ts,tsx} set filetype=typescriptreact
  autocmd BufNewFile,BufRead *.{js,jsx} set filetype=javascriptreact

  autocmd BufNewFile,BufRead *.{js,jsx,ts,tsx} :syntax sync fromstart
  autocmd BufNewFile,BufRead *.{js,jsx,ts,tsx} :syntax sync clear
endif

