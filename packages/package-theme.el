(require-package 'monokai-theme)
(load-theme 'monokai t)
(require-package 'powerline)
(powerline-default-theme)

(unless (eq system-type 'windows-nt)
  (set-frame-font "Source Code Pro 10"))

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

(setq inhibit-startup-message t)
(provide 'package-theme)
