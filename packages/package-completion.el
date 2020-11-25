(use-package company
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'company-mode)
  (setq company-idle-delay 0.01)
  (setq company-minimum-prefix-length 2)
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
  (add-hook 'prog-mode-hook 'yas-reload-all)
  (add-hook 'prog-mode-hook 'yas-minor-mode))

(use-package yasnippet-snippets :ensure t)

(provide 'package-completion)
;;; package-completion.el ends here
