set encoding=utf-8 
set nobomb "disable BOM
if has("win32")
	lang English_US
endif
syntax on
set ttyfast
set number
let mapleader=' '
let maplocalleader='§'
set list listchars=tab:··,trail:*,extends:»,precedes:«,nbsp:×
set textwidth=79 "reformat with gq
nnoremap <Leader>l :setlocal spelllang=fr<cr>
