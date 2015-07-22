(require 'package)
1
(add-to-list 'package-archives
	    '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
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
	js2-modoe
	web-mode
	json-mode
	markdown-mode
	color-theme-solarized))

(dolist (pkg my-packages)
  (when (and (not (package-installed-p pkg))
	     (assoc pkg package-archive-contents))
    (package-install pkg)))

(add-to-list 'load-path "~/.emacs.d/settings")
(require 'general-settings)
(require 'salt-settings)
(require 'python-settings)
(require 'web-settings)

(add-to-list 'load-path "~/.emacs.d/nginx-mode")
(require 'nginx-mode)

(add-to-list 'load-path "~/.emacs.d/dockerfile-mode")
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))


(add-to-list 'load-path "~/.emacs.d/packages")
(require 'typescript-settings)


;;http://stackoverflow.com/questions/5795451/how-to-detect-that-emacs-is-in-terminal-mode
(when (display-graphic-p)
  (tool-bar-mode -1)
  (menu-bar-mode -1)
  (scroll-bar-mode -1)
  (load-theme 'solarized-dark t))
;;  (color-theme-initialize)
;;  (color-theme-solarized))

;; Platform
(if (eq system-type 'windows-nt)
    (require 'winnt))
(if (eq system-type 'gnu/linux)
    (require 'linux))
(if (eq system-type 'darwin)
    (require 'macosx))
