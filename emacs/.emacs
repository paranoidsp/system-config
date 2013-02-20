(require 'package)
;; Add the original Emacs Lisp Package Archive
(add-to-list 'package-archives
             '("elpa" . "http://tromey.com/elpa/"))
(load "~/.emacs.d/sml-mode-5.0/sml-mode-startup")
(setenv "PATH" (concat "~/sml/bin:" (getenv "PATH")))
(setq exec-path (cons "~/sml/bin" exec-path))
