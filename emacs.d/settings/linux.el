(provide 'linux)

(when (display-graphic-p)
  (color-theme-initialize)
  (color-theme-solarized))

;; Fullscreen mode
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))
