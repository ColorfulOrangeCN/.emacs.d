(require-package 'company)
(require-package 'company-c-headers)
(global-company-mode t)
(setq company-idle-delay t)

(require-package 'flycheck)
(global-flycheck-mode t)

(require-package 'yasnippet)
(require-package 'yasnippet-snippets)
(yas-minor-mode-on)

(defun ifun/indent-whole-buffer()
  "indent whole buffer"
  (indent-region(point-min) (point-max))
  (message "Indent the whole buffer."))

(defun ifun/indent-region-or-buffer()
  "indent region or all the buffer"
  (interactive)
  (when (region-active-p)
    (indent-region (region-beginning) (region-end))
    (message "Indent region.")
    )
  (unless (region-active-p)
    (ifun/indent-whole-buffer)
    )
  )

(global-set-key (kbd "M-\\") 'ifun/indent-region-or-buffer)

(provide 'package-completion)
