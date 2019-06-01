;; basic emacs config
(global-hl-line-mode t)
(delete-selection-mode t)
(setq make-backup-files nil)
(global-linum-mode t)
(setq auto-save-default nil)
(global-auto-revert-mode 1)

;; set indent
(setq c-default-style "k&r")
(setq c-basic-offset 4)

;; config highlight
(use-package highlight-parentheses
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'highlight-parentheses-mode))
(use-package highlight-symbol
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'highlight-symbol-mode)
  )

(show-paren-mode t)

(use-package highlight-numbers
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'highlight-numbers-mode)
  )
(require-package 'highlight-indentation)

(defun ifun/remove-dos-eol ()
  "Replace DOS eolns CR LF with Unix eolns CR"
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

;; open parens
(use-package smartparens
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'smartparens-mode)
  )

;; open undo-tree
(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode)
  (defalias 'ifun/udt 'undo-tree-visualize)
  )

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
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "M-d") 'kill-region)
(provide 'package-editor)
