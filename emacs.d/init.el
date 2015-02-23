(require 'package)

(add-to-list 'package-archives
	    '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives
	     ' ("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; install packages
(setq my-packages
      '(go-mode
	python-mode
	coffee-mode
	clojure-mode
	yaml-mode
	json-mode
	markdown-mode
	color-theme-solarized))

(dolist (pkg my-packages)
  (when (and (not (package-installed-p pkg))
	     (assoc pkg package-archive-contents))
    (package-install pkg)))


(setq-default major-mode 'text-mode)

;; global settings
; show line number
(global-linum-mode t)
(global-hl-line-mode t)
(global-whitespace-mode t)
(global-whitespace-newline-mode t)

;; bugfix 
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

;;http://stackoverflow.com/questions/5795451/how-to-detect-that-emacs-is-in-terminal-mode
(when (display-graphic-p)
  (require 'x))
