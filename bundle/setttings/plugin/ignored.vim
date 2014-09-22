set wildignore+=*.eot,*.svg,*.woff,*.ttf "(web) fonts
set wildignore+=*.png,*.gif,*.jpg,*.ico "images
set wildignore+=*.pyc "Python pre-compiled modules
set wildignore+=*.db-journal "SQLite journal
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

