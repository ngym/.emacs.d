(setq auto-save-default nil)
(setq default-tab-width 6 indent-tabs-mode nil)
(global-undo-tree-mode)

(global-linum-mode t)

;(setq-default left-fringe-width 15)
(require 'git-gutter-fringe+)
(global-git-gutter-mode t)
;(setq git-gutter-fr:side 'right-fringe)

(add-hook 'after-init-hook #'global-flycheck-mode)
(setq flycheck-indication-mode 'right-fringe)

(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)

(setq make-backup-files nil)
(setq transient-mark-mode t)
(setq require-final-newline t)

(blink-cursor-mode 1)
(ac-config-default)

(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'exec-path "/Users/ngym/Library/Haskell/bin")

(setq eval-expression-print-length nil)
(setq eval-expression-print-level nil)

(nyan-mode)
(nyan-start-animation)
