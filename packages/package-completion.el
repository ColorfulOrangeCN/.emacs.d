(require-package 'company)
(require-package 'company-c-headers)
(global-company-mode t)
(setq company-idle-delay t)

(require-package 'flycheck)
(global-flycheck-mode t)

(require-package 'yasnippet)
(require-package 'yasnippet-snippets)
(yas-global-mode 1)

(provide 'package-completion)
