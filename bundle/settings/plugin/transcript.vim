let s:pipe=tempname()
let s:playing=0
let s:rewind=3


function s:transcript()
	let l:fn = substitute(expand("%"), "\.[^.]*$", ".mp3", "g")
	let l:_ = system("mkfifo ".s:pipe)
	let l:_ = system("echo 'pause'>".s:pipe." &")
	let l:_ = system("mplayer -slave -idle -input file=".s:pipe." ".l:fn." &")
	nnoremap <f2> :call <SID>toggle()<cr>
	echo "Started mplayer, press F2 to start playing"
endfunction

function s:toggle()
	if s:playing
		let s:playing=0
		let l:_ = system("echo 'seek -".s:rewind."\npause'>".s:pipe)
		echo "Audio Paused"
	else
		let s:playing=1
		let l:_ = system("echo 'pause'>".s:pipe)
		echo "Audio Playing..."
	endif
endfunction

function s:close()
	let l:_ = system("echo 'quit'>".s:pipe." && sleep 1 && rm ".s:pipe)
endfunction


autocmd BufRead,BufNewFile *.md call <SID>transcript()
autocmd QuitPre *.md call <SID>close()
