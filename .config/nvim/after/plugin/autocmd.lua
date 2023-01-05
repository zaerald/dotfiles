-- write file with parent dirs
vim.cmd("autocmd BufWritePre,FileWritePre * silent! call mkdir(expand('<afile>:p:h'), 'p')")

