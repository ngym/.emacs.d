;; Shota Nagayam's emacs configuration file.
;; Jan 13th, 2015

;; package.el
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; cask
(require 'cask)
(cask-initialize)

;; load init scripts
(setq init-loader-show-log-after-init "error-only")
;(setq init-loader-show-log-after-init t)
(init-loader-load "~/.emacs.d/inits")
