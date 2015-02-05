if has("win32")
	"assume this is the GNU version
	"the native FTP client doesn't support the PASIVE mode
	let g:netrw_ftp_cmd="c:\\Windows\\ftp.exe"
	let g:netrw_win95ftp=0
	"just ignore errors...
	let g:netrw_use_errorwindow=0
endif
