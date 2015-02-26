(require 'python-mode)

(add-hook 'befor-save-hook 'delete-trailing-whitespace)

(add-hook 'python-mode-hook
	  (lambda ()
	    (set-variable 'indent-tabs-mode nil)
	    (set-variable 'py-ident-offset 4)))

(provide 'python-settings)
