(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . 
	       "http://marmalade-repo.org/packages/"))
(package-initialize)

(load-theme 'solarized-dark t)

;; Disable the toolbar
(tool-bar-mode -1)

;; Fullscreen mode
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))
