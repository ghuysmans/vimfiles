if $COLORTERM == "gnome-terminal"
	let g:airline_powerline_fonts = 1
endif
let g:localvimrc_persistent=1
execute pathogen#infect()
execute pathogen#helptags()
