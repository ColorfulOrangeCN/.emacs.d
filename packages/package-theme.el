(use-package monokai-theme
  :config (load-theme 'monokai t)
  :ensure t)
(use-package powerline
  :config (powerline-default-theme)
  :ensure t)

(unless (eq system-type 'windows-nt)
  (set-frame-font "Source Code Pro 10"))
(use-package better-defaults
  :ensure t)
(provide 'package-theme)
;;; package-theme.el ends here
