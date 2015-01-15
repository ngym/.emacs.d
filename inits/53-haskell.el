;;Haskell
;;haskell-mode
;(require 'haskell-mode)
;(require 'haskell-cabal)(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.lhs$" . literate-haskell-mode))
(add-to-list 'auto-mode-alist '("\\.cabal\\'" . haskell-cabal-mode))
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-decl-scan)
(add-hook 'haskell-mode-hook
          '(lambda ()
;		(setq flycheck-define-checker 'haskell-hlint)
;		(setq flycheck-checker 'haskell-hlint)
		 (setq flycheck-define-checker 'haskell-ghc) ; haskell-ghc ではghc の後hlintにchainしている
		 (setq flycheck-checker 'haskell-ghc)
		(flycheck-mode 1)))
;(defadvice haskell-indent-indentation-info (after haskell-indent-reverse-indentation-info)
;  (when (>= (length ad-return-value) 2)
;    (let ((second (nth 1 ad-return-value)))
;	(setq ad-return-value (cons second (delete second ad-return-value))))))
;(ad-activate 'haskell-indent-indentation-info)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)




;;ghc-mod
;(add-to-list 'exec-path "~/Library/Haskell/bin")
;(add-to-list 'load-path "~/Library/Haskell/ghc-7.8.4/lib/ghc-mod-5.2.1.2/share/")
;(autoload 'ghc-init "ghc" nil t)
;(add-hook 'haskell-mode-hook (lambda () (ghc-init) (flymake-mode)))


