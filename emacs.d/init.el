
(require 'package)
(package-initialize)
(add-to-list 'package-archives
	     '("marmalade" . 
	       "http://marmalade-repo.org/packages/"))

;; install packages
(mapc
 (lambda (package)
   (or (package-installed-p package)
       (if (y-or-n-p (format "Package %s is missing. Install it?" package))
	   (package-install package))))
 '(coffee-mode markdown-mode color-theme-solarized yaml-mode))


(load-theme 'solarized-dark t)

;;http://stackoverflow.com/questions/5795451/how-to-detect-that-emacs-is-in-terminal-mode
(when (display-graphic-p)
  ;; disable toolbar in x
  (tool-bar-mode -1))

;; show line number
(global-linum-mode t)

(defvar main-dir user-emacs-directory)
(setq user-emacs-directory (expand-file-name "savefiles/" main-dir))
(setq package-user-dir (expand-file-name "elpa" main-dir))

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

