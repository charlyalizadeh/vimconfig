"██╗  ██╗███████╗██╗   ██╗██████╗ ██╗███╗   ██╗██████╗ ██╗███╗   ██╗ ██████╗ ███████╗
"██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔══██╗██║████╗  ██║██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝
"█████╔╝ █████╗   ╚████╔╝ ██████╔╝██║██╔██╗ ██║██║  ██║██║██╔██╗ ██║██║  ███╗███████╗
"██╔═██╗ ██╔══╝    ╚██╔╝  ██╔══██╗██║██║╚██╗██║██║  ██║██║██║╚██╗██║██║   ██║╚════██║
"██║  ██╗███████╗   ██║   ██████╔╝██║██║ ╚████║██████╔╝██║██║ ╚████║╚██████╔╝███████║
"╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝


"=================================================================================
"                               non-Plugin Keybindings
"=================================================================================

"Leader key
let mapleader=" "

"                            =======================
"                                   Tab/Window
"                            =======================

"Move between buffer
nnoremap <leader>wj <C-W><C-J>
nnoremap <leader>wk <C-W><C-K>
nnoremap <leader>wl <C-W><C-L>
nnoremap <leader>wh <C-W><C-H>

"Split
nnoremap <leader>sj :set sb <bar> :split <CR>
nnoremap <leader>sk :set nosb <bar> :split <CR>
nnoremap <leader>sh :set nospr <bar> :vsplit <CR>
nnoremap <leader>sl :set spr <bar> :vsplit <CR>

"Close
nnoremap <leader>sc :q <CR>

"Open terminal

nnoremap <leader>st :set splitbelow <CR> :split <CR> :terminal <CR> :resize 15 <CR> :start <CR>
"Quit terminal input
tnoremap ,<Esc> <C-\><C-N>

"Resize all terminal
nnoremap <leader>w= <C-W>=


"                            =======================
"                                     Buffer
"                            =======================

"Switch between buffer (Azerty keyboards, change if you use an QWERTY keyboard)
nnoremap <leader>& :b1 <CR>
nnoremap <leader>é :b2 <CR>
nnoremap <leader>" :b3 <CR>
nnoremap <leader>' :b4 <CR>
nnoremap <leader>( :b5 <CR>
nnoremap <leader>- :b6 <CR>
nnoremap <leader>è :b7 <CR>
nnoremap <leader>_ :b8 <CR>
nnoremap <leader>ç :b9 <CR>
nnoremap <leader>à :b0 <CR>

"Kill buffer TODO: Correct bug in this function
nnoremap <leader>bk :call KillBuffer() <CR>

"                            =======================
"                                     Tabs
"                            =======================

nnoremap <leader>t& 1gt
nnoremap <leader>té 2gt
nnoremap <leader>t" 3gt
nnoremap <leader>t' 4gt
nnoremap <leader>t( 5gt
nnoremap <leader>t- 6gt
nnoremap <leader>tè 7gt
nnoremap <leader>t_ 8gt
nnoremap <leader>tç 9gt
nnoremap <leader>tà 0gt


"                            =======================
"                                     Misc
"                            =======================

"Prevent from using arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Auto closed
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
"Reset highlight
nnoremap <Leader><Leader> :noh<CR>

"Resize
nnoremap <Left> :vertical resize+5 <CR>
nnoremap <Right> :vertical resize-5 <CR>
nnoremap <Up> :resize+5 <CR>
nnoremap <Down> :resize-5 <CR>

"Correct some wrong highlight when a part of the code is considered
"as a string
noremap <F2> :syntax sync fromstart <CR>

"Reload colorscheme
nnoremap <F3> :colorscheme gruvbox <CR>

"Insert equation environment in LaTeX
autocmd filetype tex inoremap <buffer>,e \[\]<left><left><CR><CR><up><Esc>cc
autocmd filetype tex inoremap <buffer>,i  \(\)<left><left>
autocmd filetype tex nnoremap <buffer>j  gj
autocmd filetype tex nnoremap <buffer>k  gk

"Save and source ~/.config/nvim/config/init.vim and run :PlugInstall
"autocmd filetype vim nnoremap <buffer><Leader>ss :w<bar>:source %<CR> :PlugInstall <CR>
"Clean uninstalled plugin
"autocmd filetype vim nnoremap <buffer><Leader>sc :w<bar>:source %<CR> :PlugClean <CR>

"Toggle 120 column color
nnoremap <expr> <Leader>l &colorcolumn==0 ? ':set colorcolumn=80<CR>':':set colorcolumn=0<CR>'
"<Esc>
"Insert empty line without leaving normal mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>


"                            =======================
"                                 Running Program
"                            =======================

"REPL
"Python
autocmd filetype python nnoremap <buffer> <f6> :set splitright <bar> :vsplit <bar> :terminal python <CR>
autocmd filetype python nnoremap <buffer> <f5> :w <bar> :set splitright <bar> :vsplit <bar> :terminal python %<CR>
"Julia
autocmd filetype julia nnoremap <buffer> <F5> :set splitright <bar> :vsplit <bar> :terminal julia <CR>
"R
autocmd filetype r nnoremap <buffer> <F5> :set splitright <bar> :vsplit <bar> :terminal R <CR>
autocmd filetype rmarkdown nnoremap <buffer> <F5> :set splitright <bar> :vsplit <bar> :terminal R <CR>
"MySQL
autocmd filetype sql nnoremap <buffer> <F5> :set splitright <bar> :vsplit <bar> :terminal mysql --user=root -p<CR>

"OTHER
"C#
autocmd filetype cs nnoremap <f5> :w <bar> :!mcs % <CR> :set splitright <bar> :vsplit <bar> :terminal ./'%:r.exe' <CR>
"JavasCRipt
autocmd filetype javasCRipt nnoremap <buffer> <f5> :w  <bar> :!firefox ./index.html <CR>
"C++
autocmd filetype cpp nnoremap <buffer> <f5> :w <bar> :packadd termdebug <bar> :Termdebug a.out <CR>
"HTML
autocmd filetype html nnoremap <buffer> <f5> :w <bar> :!firefox % <CR>


"=================================================================================
"                               Plugin Keybindings
"=================================================================================

"vim-slime
"autocmd filetype python,julia,r nmap <C-i> RSlimeSendCurrentLine <CR>

"fzf
nnoremap <silent> <Leader>f. :Files %:p:h<CR>
nnoremap <silent> <Leader>fb :Buffers <CR>
nnoremap <silent> <Leader>f/ :Files ~/<CR>
nnoremap <silent> <Leader>ff :GFiles<CR>
