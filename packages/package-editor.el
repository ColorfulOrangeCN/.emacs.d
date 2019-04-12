;; basic emacs config
(global-hl-line-mode t)
(delete-selection-mode t)
(setq make-backup-files nil)
(global-linum-mode t)

;; config highlight
(require-package 'highlight-parentheses)
(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)

(defun iconfig/remove-dos-eol ()
  "Replace DOS eolns CR LF with Unix eolns CR"
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

;; config ace-jump-mode
(require-package 'ace-jump-mode)
(global-set-key (kbd "M-g M-a") 'ace-jump-mode)

;; config imenu
(global-set-key (kbd "M-g M-i") 'imenu)

;; open parens
(electric-pair-mode t)

(provide 'package-editor)
