;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
(setq
 projectile-project-search-path '("~/repos/")
 doom-font (font-spec :family "Ubuntu Mono" :size 20))

(global-visual-line-mode 1)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(map! :leader
      (:prefix-map ("p" . "project")
        :desc "Ag project"                      "f" #'ag-project))
