(provide 'linux)

(when (display-graphic-p)
    (if (eq system-type 'gnu/linux)
	(color-theme-initialize)
      (color-theme-solarized))

;; Fullscreen mode
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))
