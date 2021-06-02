;; Shota Nagayam's emacs configuration file.
;; Jan 13th, 2015

;; package.el
;(require 'package)
;(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; cask
(require 'cask)
(cask-initialize)

;; load init scripts
;(require 'init-loader)
(setq init-loader-show-log-after-init "error-only")
;(setq init-loader-show-log-after-init t)
(init-loader-load "~/.emacs.d/inits")
;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; '(safe-local-variable-values (quote ((TeX-master . t)))))
;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (package-build shut-up epl git commander f dash s))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; abbrev
(setq abbrev-file-name "~/.abbrev_defs")
(define-key esc-map  " " 'expand-abbrev) ;; M-SPC
(quietly-read-abbrev-file)
(setq save-abbrevs 'silently)
