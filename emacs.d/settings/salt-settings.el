(require 'yaml-mode)

;; Yaml mode
(add-to-list 'auto-mode-alist '("\\.sls$" . yaml-mode))
(add-hook 'yaml-mode-hook
	  '(lambda ()
	     (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

(provide 'salt-settings)
