(require 'web-mode)

(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-style-padding 1)
(setq web-mode-script-padding 1)
(setq web-mode-block-padding 0)
(setq web-mode-comment-style 2)
(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-css-colorization t)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-engins-alist
      '(("django" . "\\.html\\'")))

(provide 'web-settings)
