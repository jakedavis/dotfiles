;; Alt as meta
(setq x-alt-keysym 'meta)

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Emacs-starter-kit
(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings starter-kit-ruby)
  "A list of packages to ensure are installed at launch.")
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Python mode
(add-to-list 'load-path "/home/jake/custom/python-mode")
(setq py-install-directory "/home/jake/custom/python-mode")
(require 'python-mode)

;; Haskell mode
(load "~/custom/haskell-mode/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

