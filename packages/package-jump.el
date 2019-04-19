;; config ace-jump-mode
(require-package 'avy)
(global-set-key (kbd "M-g M-g") 'avy-goto-char)
(require-package 'ace-window)
(global-set-key (kbd "C-x o") 'ace-window)

;; config imenu
(global-set-key (kbd "M-g M-i") 'imenu)

;; pop-win
(require-package 'popwin)
(popwin-mode t)

;;
(require-package 'find-file-in-project)
(global-set-key (kbd "M-p") 'find-file-in-project)
(provide 'package-jump)
