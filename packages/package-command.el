(use-package smex
  :ensure t
  :config
  (smex-initialize)
  :bind
  (("M-x" . smex) ("M-X" . smex-major-mode-commands))
  )

(provide 'package-command)
