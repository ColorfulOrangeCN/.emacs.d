(use-package company
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'company-mode)
  (setq company-idle-delay t)
  )

(use-package company-lsp
  :ensure t
  :config
  (push 'company-lsp company-backends)
  )

(electric-pair-mode t)

(use-package flycheck
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'flycheck-mode)
  )

(use-package yasnippet
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'yas-minor-mode))

(use-package yasnippet-snippets :ensure t)

(provide 'package-completion)
;;; package-completion.el ends here
