(add-to-list 'load-path "~/.ema.dc/packages")

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  ;;(setq package-archives ))
  )
(defvar iconfig/packages '())

(setq package-selected-packages iconfig/packages)

(provide 'init-packages)
