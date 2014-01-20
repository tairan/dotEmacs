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
 '(coffee-mode markdown-mode color-theme-solarized yaml-mode))


(load-theme 'solarized-dark t)

;; Disable the toolbar
(tool-bar-mode -1)
;; show line number
(global-linum-mode t)

(add-to-list 'load-path "~/.emacs.d")

;; Yaml mode
(add-to-list 'auto-mode-alist '("\\.sls$" . yaml-mode))

(add-hook 'yaml-mode-hook
	  '(lambda ()
	     (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;; Platform
(if (eq system-type 'windows-nt)
    (require 'winnt))

(if (eq system-type 'gnu/linux)
    (require 'linux))

(if (eq system-type 'darwin)
    (require 'macosx))
