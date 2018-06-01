if $COLORTERM == "gnome-terminal"
	let g:airline_powerline_fonts = 1
endif
let g:localvimrc_persistent=1
execute pathogen#infect()
execute pathogen#helptags()
let g:syntastic_check_on_open = 1

let g:opamshare = substitute(system('opam config var share'),'\n$','','')
if g:opamshare !~# "command"
	execute "set rtp+=" . g:opamshare . "/merlin/vim"
endif
