;; Alt as meta
(setq x-alt-keysym 'meta)

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; emacs-starter-kit
(defvar my-packages '(starter-kit-lisp starter-kit-bindings starter-kit-ruby)
  "A list of packages to ensure are installed at launch.")
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; electronic mail via notmuch
;;(require 'notmuch)
;;(setq message-kill-buffer-on-exit t)
;;(setq sendmail-program "/usr/bin/msmtp")

;; Haskell mode
(load "~/custom/haskell-mode/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

(custom-set-variables
 )
(custom-set-faces
 '(hl-line ((t (:inherit nil)))))

;; line numbers
(global-linum-mode 1)

;; send both of these terrible things to hell
(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(remove-hook 'prog-mode-hook 'esk-turn-on-idle-highlight-mode)  
