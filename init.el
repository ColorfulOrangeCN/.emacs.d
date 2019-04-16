(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'cl)

(require 'init-packages)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (popwin ace-window ace-jump-mode yasnippet-snippets yasnippet flycheck company smex powerline monokai-theme undo-tree smartparens highlight-parentheses))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
