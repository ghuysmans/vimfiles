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
"smart search
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
nmap <Leader>x :NERDTreeToggle<cr>
nmap <Leader>f /sdhfgsdjhgf<cr>
nmap <Leader>i :set viminfo=<cr>
"ignored files
set wildignore+=*.eot,*.svg,*.woff,*.ttf "(web) fonts
set wildignore+=tags "ctags
set wildignore+=*.png,*.gif,*.jpg,*.ico "images
"NERDTree ignored files
"taken from http://stackoverflow.com/a/19972950
function! s:FileGlobToRegexp(glob)
	"The matching is done against the sole file/directory name.
	if a:glob =~# '^\*\.'
		return '\.'.a:glob[2:].'$'
	else
		return '^'.a:glob.'$'
	endif
endfunction
let g:NERDTreeIgnore = map(split(&wildignore, ','), 's:FileGlobToRegexp(v:val)')
