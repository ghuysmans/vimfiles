function s:shortcuts()
	nmap <Leader>r <Plug>(MerlinRename)
	nmap <Leader>R <Plug>(MerlinRenameAppend)
	nmap <Leader>; <Plug>(MerlinSearchOccurrencesForward)
	nmap <Leader>? <Plug>(MerlinSearchOccurrencesBackward)
	nmap <Leader>e :MerlinErrorCheck<cr>
	nmap <Leader>l :MerlinLocate<cr>
	nmap <Leader>L :MerlinJump let<cr>
	nmap <Leader>M :MerlinJump match<cr>
	nmap <Leader>F :MerlinJump fun<cr>
endfunction
au BufNewFile,BufRead *.ml setlocal tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.ml call s:shortcuts()
