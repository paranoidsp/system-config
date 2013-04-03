;(setq url-proxy-services '(("http" . "10.93.0.37:3333")))
(setq url-proxy-services '(("http" . "localhost:1234")))

(require 'package)
;; Add the original Emacs Lisp Package Archive
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                           ("marmalade" . "http://marmalade-repo.org/packages/")
                           ("melpa" . "http://melpa.milkbox.net/packages/")))
(add-to-list 'package-archives
             '("elpa" . "http://tromey.com/elpa/"))


(load "~/.emacs.d/sml-mode-5.0/sml-mode-startup")
(setenv "PATH" (concat "~/sml/bin:" (getenv "PATH")))
(setq exec-path (cons "~/sml/bin" exec-path))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Jabber setup
;(setq jabber-account-list
;     '(("viswanathkarthikeya@gmail.com"
;    (:network-server . "talk.google.com")
;     (:password . "jXlfpq660Xcs")
;     (:connection-type . ssl)
;     (:port . 5223)
;     )))
;; To disable avatars
;(setq jabber-vcard-avatars-retrieve nil
;      jabber-chat-buffer-show-avatar nil)
;(setq jabber-account-list '(("viswanathkarthikeya@gmail.com" (:network-server . "talk.google.com") (:password . "Hyk1+p006") (:connection-type . ssl) (:port . 443))))
;(setq jabber-vcard-avatars-retrieve nil jabber-chat-buffer-show-avatar nil)
(setq jabber-account-list
'(("viswanathkarthikeya@gmail.com" 
(:network-server . "talk.google.com")
(:password . "Hyk1+p006")
(:connection-type . ssl)
(:port . 443))))

(setq jabber-vcard-avatars-retrieve nil
jabber-chat-buffer-show-avatar nil)  

;; Python emacs
;(setq py-install-directory "~/.emacs.d/")
;(add-to-list 'load-path py-install-directory)
;(require 'python-mode)

;(load "~/.emacs.d/emacs-for-python/epy-init.el")

; Indentation in python
;(smart-tabs-advice py-indent-line py-indent-offset)
;(smart-tabs-advice py-newline-and-indent py-indent-offset)
;(smart-tabs-advice py-indent-region py-indent-offset)

;; Ipython integration
;(epy-setup-ipython)


;; Line numbers
(global-linum-mode t)
(add-to-list 'load-path "~/.emacs.d/elpa/hlinum-20110605.955/")
(load-file "~/.emacs.d/elpa/deep-thought-theme-0.0.6/deep-thought-theme.el")
(require 'hlinum)
(add-to-list 'load-path "~/.emacs.d/elpa/evil-20130306.1001")
;(require 'evil-mode)
