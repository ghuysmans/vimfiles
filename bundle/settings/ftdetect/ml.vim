function s:shortcuts()
	nmap <Leader>r <Plug>(MerlinRename)
	nmap <Leader>R <Plug>(MerlinRenameAppend)
	nmap <Leader>; <Plug>(MerlinSearchOccurrencesForward)
	nmap <Leader>? <Plug>(MerlinSearchOccurrencesBackward)
	nmap <Leader>e :MerlinErrorCheck<cr>
	nmap <Leader>i :let g:merlin_locate_preference = 'mli'<cr>
	nmap <Leader>c :let g:merlin_locate_preference = 'ml'<cr>
	nmap <C-i> :MerlinILocate<cr>
	nmap <Leader>L :MerlinJump let<cr>
	nmap <Leader>M :MerlinJump match<cr>
	nmap <Leader>F :MerlinJump fun<cr>
	nnoremap <expr> é% "c%" . input("Variable name: ") . "\<esc>Olet \<C-r>. = \<C-r>\" in\<esc>`["
	vnoremap <expr> é "c" . input("Variable name: ") . "\<esc>Olet \<C-r>. = \<C-r>\" in\<esc>`["
endfunction
let g:merlin_ignore_warnings = "false"
let g:syntastic_ocaml_checkers = ['merlin']
au BufNewFile,BufRead *.ml,*.mli setlocal tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.ml,*.mli call s:shortcuts()
