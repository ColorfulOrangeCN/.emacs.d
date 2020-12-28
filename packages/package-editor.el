;; basic emacs config
(global-hl-line-mode t)
(delete-selection-mode t)
(setq make-backup-files nil)
(global-linum-mode t)
(setq auto-save-default nil)
(global-auto-revert-mode 1)
(setq inhibit-splash-screen t)

(unless (display-graphic-p)
  ;; Use Terminal
  (xterm-mouse-mode 1)
  (global-set-key (kbd "<mouse-4>") 'scroll-down-line)
  (global-set-key (kbd "<mouse-5>") 'scroll-up-line)
  )

(add-hook 'prog-mode-hook 'hs-minor-mode)
(add-hook 'prog-mode-hook
	  (lambda ()
            (local-set-key (kbd "M-g M-h") 'hs-hide-block)))
(add-hook 'prog-mode-hook
	  (lambda ()
            (local-set-key (kbd "M-g M-s") 'hs-show-block)))

;; set indent
(c-add-style "oicode" '((c-basic-offset . 2)))
(add-hook 'c-mode-common-hook (lambda () (c-set-style "oicode")))

(use-package clang-format+
  :ensure t
  :config
  (add-hook 'c-mode-common-hook 'clang-format+-mode))

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

(use-package smart-hungry-delete
  :ensure t
  :bind (("<backspace>" . smart-hungry-delete-backward-char)
         ("C-d" . smart-hungry-delete-forward-char))
  :defer nil ;; dont defer so we can add our functions to hooks
  :config (smart-hungry-delete-add-default-hooks)
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

(defun toggle-comment-on-line ()
  "comment or uncomment current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))
(global-set-key (kbd "M-g M-/") 'toggle-comment-on-line)
(global-set-key (kbd "M-\\") 'ifun/indent-region-or-buffer)
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "M-d") 'kill-region)
(provide 'package-editor)
