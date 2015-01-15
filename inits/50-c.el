;;
;;C/C++
;;


(setq c-basic-offset 6)

;(flycheck-define-checker c/c++
;  "A C/C++ checker using g++."
;      :command ("g++" "-Wall" "-Wextra" source)
;      :error-patterns  ((error line-start (file-name) ":" line ":" column ":" " エラー: " (message) line-end)
;                        (warning line-start (file-name) ":" line ":" column ":" " 警告: " (message) line-end))
;      :modes (c-mode c++-mode))

;(add-hook 'c-mode-common-hook
;          '(lambda ()
             ;; センテンスの終了である ';' を入力したら、自動改行+インデント
             ;;(c-toggle-auto-hungry-state 1)
             ;; RET キーで自動改行+インデント
;             (define-key c-mode-base-map "\C-m" 'newline-and-indent)
;		 ))
