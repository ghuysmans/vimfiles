au! BufNewFile,BufRead *.ts call SetTsOptions()
function SetTsOptions()
	setf javascript
	set nocindent
endfunction
