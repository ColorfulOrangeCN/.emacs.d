;; config ace-jump-mode
(use-package avy
  :ensure t
  :bind (("M-g M-g" . avy-goto-char)
         ("M-g M-w" . avy-goto-word-0-regexp)))

;; config imenu
(global-set-key (kbd "M-g M-i") 'imenu)

;; pop-win
(use-package popwin
  :ensure t
  :config (popwin-mode t))
;;
(use-package find-file-in-project
  :ensure t
  :bind ("M-g M-p" . find-file-in-project))
(provide 'package-jump)
