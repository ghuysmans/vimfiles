if has("gui_running")
	colors corporation
	set go-=m go-=T go-=r
	set guifont=Consolas:h11
endif
set encoding=utf-8 
lang English_US
syntax on
set ttyfast
set relativenumber
let mapleader=' '
"search
set hlsearch
set ignorecase
set smartcase
"indentation
set autoindent
set tabstop=4
set shiftwidth=4
set smartindent
"autocomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete
nmap <F12> :silent !ctags -R *<cr>
"shortcuts
nmap <Leader>1 yypVr=
nmap <Leader>s :new ~/vimfiles/bundle/setttings/plugin/settings.vim<cr>G
nmap <Leader>x :NERDTree<cr>
