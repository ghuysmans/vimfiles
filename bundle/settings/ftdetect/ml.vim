function s:shortcuts()
	nmap <Leader>r <Plug>(MerlinRename)
	nmap <Leader>R <Plug>(MerlinRenameAppend)
	nmap <Leader>; <Plug>(MerlinSearchOccurrencesForward)
	nmap <Leader>? <Plug>(MerlinSearchOccurrencesBackward)
	nmap <Leader>e :MerlinErrorCheck<cr>
endfunction
au BufNewFile,BufRead *.ml setlocal tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.ml call s:shortcuts()
