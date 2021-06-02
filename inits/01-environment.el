(setq inhibit-startup-screen t)
(setq initial-scratch-message "")

(global-auto-complete-mode)
(global-diff-hl-mode)

(setq auto-save-default nil)
(setq-default tab-width 4 indent-tabs-mode nil)
(global-undo-tree-mode)

(global-linum-mode t)

(add-hook 'after-init-hook #'global-flycheck-mode)
(setq flycheck-indication-mode 'right-fringe)

(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)

(setq make-backup-files nil)
(setq transient-mark-mode t)
(setq require-final-newline t)

(blink-cursor-mode 1)

(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'exec-path "/Users/ngym/Library/Haskell/bin")

(setq eval-expression-print-length nil)
(setq eval-expression-print-level nil)

;; メニューバーを非表示
(menu-bar-mode -1)
(tool-bar-mode -1)
;; スクロールバー非表示
(set-scroll-bar-mode nil)

(require 'minimap)

;(nyan-mode)
;(nyan-start-animation)

;; Aspell
(setq-default ispell-program-name "aspell") 
(eval-after-load "ispell"
 '(add-to-list 'ispell-skip-region-alist '("[^\000-\377]+")))

;; git checkout 時に自動で再読み込み
(global-auto-revert-mode 1)

