;----------------------------------
;;; General settings for global ;;;
;----------------------------------

(setq-default major-mode 'text-mode)

;; global settings
(global-linum-mode t)
(global-hl-line-mode t)
(global-whitespace-mode t)
(global-whitespace-newline-mode t)

; no backup
(setq make-backup-files nil)

;; encoding
(set-language-environment "UTF-8")

(provide 'general-settings)
