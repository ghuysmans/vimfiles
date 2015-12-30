"slightly modified version of
"https://philpep.org/blog/Lire-les-pages-de-manuel-avec-vim-c-est-possible-!
if !has("win32")
	runtime ftplugin/man.vim
	nnoremap K :Man 3 <cword><CR>
	set <M-k>=k
	nnoremap <M-k> :Man 2 <cword><CR>
endif
