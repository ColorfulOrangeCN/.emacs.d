(require 'cl)

(add-to-list 'load-path "~/.emacs.d/packages")

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(
			   ("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                           ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
  )

(defvar iconfig/package-refreshed 0)

(defvar iconfig/packages '())

(defun iconfig/try-to-install-package(pkg)
  (when (not (package-installed-p pkg))
    (when (= iconfig/package-refreshed 0)
      (package-refresh-contents)
      (setq iconfig/package-refreshed 1)
      )
    (package-install pkg)
    )
  (add-to-list 'iconfig/packages pkg)
  )

(defun require-package(pkg)
  (iconfig/try-to-install-package pkg)
  (require pkg)
  )
(require-package 'use-package)

(require 'require-packages)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (better-defaults yasnippet-snippets use-package undo-tree smex smartparens py-autopep8 powerline popwin monokai-theme markdown-mode magit highlight-symbol highlight-parentheses highlight-numbers highlight-indentation flycheck find-file-in-project company-c-headers ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
