(add-to-list 'load-path "~/.emacs.d/packages")

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(
			   ("gnu" . "http://elpa.emacs-china.org/gnu/")
                           ("melpa" . "http://elpa.emacs-china.org/melpa/")))
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

(require 'require-packages)

(setq package-selected-packages iconfig/packages)

(provide 'init-packages)
