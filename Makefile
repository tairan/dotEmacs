.PONY: install

install:
	rm -rf $(HOME)/.emacs.d
	rm -f $(HOME)/.emacs
	ln -s `pwd`/emacs.d $(HOME)/.emacs.d
	git submodule init
	git submodule update
