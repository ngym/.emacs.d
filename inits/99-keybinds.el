;;
;; Key settings
;;
(setq mac-option-modifier 'meta)

(global-set-key "\C-h" 'backward-delete-char)

(global-set-key (kbd "C-/") 'undo)
(global-set-key (kbd "C-S-/") 'undo-tree-redo)
(define-key undo-tree-visualizer-mode-map "\r" 'undo-tree-visualizer-quit)
(define-key undo-tree-visualizer-mode-map "q" 'undo-tree-visualizer-abort)

(global-set-key (kbd "C-@") 'er/expand-region)
(global-set-key (kbd "C-`") 'er/contract-region)

(global-set-key "\C-cn" 'flycheck-next-error)
(global-set-key "\C-cp" 'flycheck-previous-error)

(define-key ac-menu-map (kbd "C-n") 'ac-next)
(define-key ac-menu-map (kbd "C-p") 'ac-previous)
(define-key ac-menu-map "\t" 'nil)
(define-key ac-menu-map "\r" 'ac-complete)
(define-key ac-complete-mode-map "\r" 'ac-complete)

(eval-after-load "haskell-mode"
  '(progn
     (define-key haskell-mode-map (kbd "C-,") 'haskell-move-nested-left)
     (define-key haskell-mode-map (kbd "C-.") 'haskell-move-nested-right)))
