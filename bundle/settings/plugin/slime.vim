if has("terminal")
	let g:slime_target = "Vimterminal"
else
	let g:slime_default_config = {"sessionname": $STY, "windowname": "1"}
endif
