;;
;; Key settings
;;
(setq mac-option-modifier 'meta)

(global-set-key "\C-h" 'backward-delete-char)

(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-/") 'undo)
(global-set-key (kbd "C-S-/") 'undo-tree-redo)
(define-key undo-tree-visualizer-mode-map "\r" 'undo-tree-visualizer-quit)
(define-key undo-tree-visualizer-mode-map "q" 'undo-tree-visualizer-abort)

(global-set-key (kbd "C-@") 'er/expand-region)
(global-set-key (kbd "C-`") 'er/contract-region)

(global-set-key "\C-cn" 'flycheck-next-error)
(global-set-key "\C-cp" 'flycheck-previous-error)

;(setq ac-use-fuzzy t)
;(global-auto-complete-mode t)
;(ac-config-default)
;(setq ac-delay 0) ;; 補完候補表示までの時間
;(setq ac-auto-show-menu 0.05) ;; ヒント表示までの時間
;(ac-set-trigger-key "TAB")
;(setq ac-use-menu-map t)
;(setq ac-menu-height 25) ;; ちょっと大きめにとりましょう！
;(setq ac-auto-start 2) ;; 個人的には3でもいいかも
;(setq ac-ignore-case t)
;(define-key ac-completing-map (kbd "<tab>") 'ac-complete)
;; ac-source（要するにどうやって補完候補を選ぶか）
;(setq-default ac-sources 'ac-source-words-in-same-mode-buffers)
;(setq-default ac-sources (push 'ac-source-yasnippet ac-sources))

(setq ac-use-fuzzy t)
(setq ac-delay 0) ;; 補完候補表示までの時間
(setq ac-auto-show-menu 0.05) ;; ヒント表示までの時間
(setq ac-menu-height 25) ;; ちょっと大きめにとりましょう！
(setq ac-auto-start 2) ;; 個人的には3でもいいかも
(setq ac-ignore-case t)
;(ac-set-trigger-key "TAB")
;(define-key ac-completing-map (kbd "<tab>") 'ac-complete)
(define-key ac-completing-map (kbd "<tab>") 'ac-next)
(define-key ac-completing-map (kbd "C-n") 'ac-next)
(define-key ac-completing-map (kbd "C-p") 'ac-previous)
;(setq-default ac-sources 'ac-source-words-in-same-mode-buffers)
;(setq-default ac-sources (push 'ac-source-yasnippet ac-sources))
;(define-key ac-menu-map (kbd "C-n") 'ac-next)
;(define-key ac-menu-map (kbd "C-p") 'ac-previous)
;(define-key ac-menu-map "\t" 'nil)
;(define-key ac-menu-map "\r" 'ac-complete)
;(define-key ac-complete-mode-map "\r" 'ac-complete)

(eval-after-load "haskell-mode"
  '(progn
     (define-key haskell-mode-map (kbd "C-,") 'haskell-move-nested-left)
     (define-key haskell-mode-map (kbd "C-.") 'haskell-move-nested-right)))
