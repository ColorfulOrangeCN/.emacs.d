;; config ace-jump-mode
(require-package 'ace-jump-mode)
(global-set-key (kbd "M-g M-g") 'ace-jump-mode)

;; config imenu
(global-set-key (kbd "M-g M-i") 'imenu)

;; ace-windows
(require-package 'ace-window)
(global-set-key (kbd "C-x o") 'ace-window)

;; pop-win
(require-package 'popwin)
(popwin-mode t)

(provide 'package-jump)
