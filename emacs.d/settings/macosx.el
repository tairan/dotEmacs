(provide 'macosx)

(toggle-frame-maximized)

(when (display-graphic-p)
  (if (eq system-type 'darwin)
  (load-theme 'solarized-dark t)))
