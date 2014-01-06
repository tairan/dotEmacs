(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . 
	       "http://marmalade-repo.org/packages/"))
(package-initialize)

;; install packages
(mapc
 (lambda (package)
   (or (package-installed-p package)
       (if (y-or-n-p (format "Package %s is missing. Install it?" package))
	   (package-install package))))
 '(coffee-mode markdown-mode color-theme-solarized))


(load-theme 'solarized-dark t)

;; Disable the toolbar
(tool-bar-mode -1)

;; Fullscreen mode
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))
