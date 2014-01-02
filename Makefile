.PONY: install

install:
	rm -rf $(HOME)/.emacs.d
	rm -f $(HOME)/.emacs
	ln -s `pwd`/emacs $(HOME)/.emacs
	ln -s `pwd`/emacs.d $(HOME)/.emacs.d
