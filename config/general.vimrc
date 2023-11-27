" ██████╗ ███████╗███╗   ██╗███████╗██████╗  █████╗ ██╗     
"██╔════╝ ██╔════╝████╗  ██║██╔════╝██╔══██╗██╔══██╗██║     
"██║  ███╗█████╗  ██╔██╗ ██║█████╗  ██████╔╝███████║██║     
"██║   ██║██╔══╝  ██║╚██╗██║██╔══╝  ██╔══██╗██╔══██║██║     
"╚██████╔╝███████╗██║ ╚████║███████╗██║  ██║██║  ██║███████╗
" ╚═════╝ ╚══════╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝

"Termdebug on the left side
let g:termdebug_wide=1

"Default folding method
set foldmethod=indent
"set foldexpr=nvim_treesitter#foldexpr()

"General folding options
autocmd filetype python set foldmethod=indent 
autocmd filetype julia set foldmethod=indent 
autocmd filetype tex set foldmethod=expr | :set foldexpr=vimtex#fold#level(v:lnum) | :set foldtext=vimtex#fold#text() | :set fillchars=fold:\
autocmd filetype CHADTree set nofoldenable

"Vimwiki requirements
set nocompatible
filetype plugin on

"Colorscheme setup
syntax on
set termguicolors
"let base16colorspace=256
set t_Co=16
colorscheme gruvbox
se cursorline

"Color 80 character limits
hi ColorColumn ctermbg=lightgrey guibg=#252525
set colorcolumn=120

"Basic setup
set nu
set rnu
set noerrorbells
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set smartindent smarttab
set nowrap
set noswapfile
set incsearch
set undodir=~/.config/.nvim/undodir
set undofile
set scrolloff=1

autocmd filetype tex set wrap

"Set .jl filetype as julia file
autocmd BufRead,BufNewFile *.jl :set filetype=julia

"Set .uml filetype as plantuml file
autocmd BufRead,BufNewFile *.uml :set filetype=plantuml

"Set .html filetype as django templates
autocmd BufRead,BufNewFile *.html :set filetype=htmldjango

"Allow moving between buffer without saving
set hidden

"Highlight search and replace
set inccommand=nosplit

"Copy to clipboard
set clipboard+=unnamedplus
