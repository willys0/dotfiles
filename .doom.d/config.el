;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
(setq
 display-line-numbers-type 'relative)

(setq projectile-indexing-method 'native)

(setq
 doom-font (font-spec :family "Ubuntu Mono" :size 17))

(global-visual-line-mode 1)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(map! :leader
      (:prefix-map ("c" . "code")
        :desc "Jump to header/source file"      "j" #'ff-find-other-file))
