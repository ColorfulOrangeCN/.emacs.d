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

(defun require-package(pkg)
  (when (not (package-installed-p pkg))
    (when (= iconfig/package-refreshed 0)
      (package-refresh-contents)
      (setq iconfig/package-refresh 1)
      )
    (package-install pkg)
    )
  (add-to-list 'iconfig/packages pkg)
  (require pkg)
  )

(require 'require-packages)

(setq package-selected-packages iconfig/packages)

(provide 'init-packages)
