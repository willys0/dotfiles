;; -*- no-byte-compile: t; -*-
;;; ~/.doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:fetcher github :repo "username/repo"))
;; (package! builtin-package :disable t)
(package! ag :recipe(:host github :repo "Wilfred/ag.el"))
(package! srcery :recipe(:host github :repo "srcery-colors/srcery-emacs"))
(package! sudoku :recipe(:host github :repo "zevlg/sudoku.el"))
