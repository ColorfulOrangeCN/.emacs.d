(require-package 'company)
(require-package 'company-c-headers)
(global-company-mode t)
(setq company-idle-delay t)

(electric-pair-mode t)

(require-package 'flycheck)
(global-flycheck-mode t)

(require-package 'yasnippet)
(require-package 'yasnippet-snippets)
(add-hook 'prog-mode-hook 'yas-minor-mode)
;; Python completer & checker
(require-package 'py-autopep8)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
(provide 'package-completion)
