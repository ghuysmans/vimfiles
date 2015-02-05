if has("python")
	set laststatus=2
	python from powerline.vim import setup as powerline_setup
	python powerline_setup()
	python del powerline_setup
endif
