set termguicolors
set background=dark
highlight Normal guibg=NONE ctermbg=NONE
set t_Co=256

let g:gruvbox_material_better_performance = 1

colorscheme gruvbox-material
let g:airline_theme='gruvbox_material'

lua require'colorizer'.setup()

