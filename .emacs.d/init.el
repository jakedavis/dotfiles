;; .emacs.d/init.el

(require 'erc)
(require 'package)

(setq x-alt-keysym 'meta)

;; Packages or whatever
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))
(defvar my-packages '(starter-kit-lisp starter-kit-bindings starter-kit-ruby))
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; line numbers
(global-linum-mode 1)

;; send both of these terrible things to hell
(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(remove-hook 'prog-mode-hook 'esk-turn-on-idle-highlight-mode)  

