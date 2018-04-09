;; Font-lock
(global-font-lock-mode t)
(defface my-face-b-1 '((t (:background "medium aquamarine"))) nil)
(defface my-face-b-1 '((t (:background "dark turquoise"))) nil)
(defface my-face-b-2 '((t (:background "cyan"))) nil)
(defface my-face-b-2 '((t (:background "SeaGreen"))) nil)
(defface my-face-u-1 '((t (:foreground "SteelBlue" :underline t))) nil)
(defvar my-face-b-1 'my-face-b-1)
(defvar my-face-b-2 'my-face-b-2)
(defvar my-face-u-1 'my-face-u-1)
(defadvice font-lock-mode (before my-font-lock-mode ())
            (font-lock-add-keywords
                 major-mode
                    '(
                           ("　" 0 my-face-b-1 append)
                           ("\t" 0 my-face-b-2 append)
                           ("[ \t]+$" 0 my-face-u-1 append)
          )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)
(add-hook 'find-file-hooks '(lambda ()
                             (if font-lock-mode
                               nil
                               (font-lock-mode t))))
(add-hook
 'font-lock-mode-hook
 '(lambda ()
    (local-set-key "\C-l" 'my-recenter-and-fontify-buffer)
    ))
(add-hook 'font-lock-mode-hook
          '(lambda ()
             (my-font-lock-set-face)))
(defun my-font-lock-set-face ()
  ;;
  (make-face 'my-keyword-face)
  (face-spec-set 'my-keyword-face '((t (:bold t))))
  (set-face-foreground 'my-keyword-face "DarkCyan")
  (setq font-lock-keyword-face 'my-keyword-face)
					;(setq font-lock-keyword-face 'bold)
  ;;
  (make-face 'my-comment-face)
  (set-face-foreground 'my-comment-face "lightgreen")
  (setq font-lock-comment-face 'my-comment-face)
  ;;
  (make-face 'my-string-face)
  (set-face-foreground 'my-string-face "green")
  (setq font-lock-string-face 'my-string-face)
  ;;
  (make-face 'my-function-face)
  (set-face-foreground 'my-function-face "cyan")
  (setq font-lock-function-name-face 'my-function-face)
  ;;
  (make-face 'my-variable-face)
  (set-face-foreground 'my-variable-face "Goldenrod")
  (setq font-lock-variable-name-face 'my-variable-face)
  ;;
  (make-face 'my-define-face)
  (face-spec-set 'my-define-face '((t (:bold t))))
  (set-face-foreground 'my-define-face "MediumSeaGreen")
  (setq font-lock-constant-face 'my-define-face)
  ;;
  (make-face 'my-type-face)
  (set-face-foreground 'my-type-face "darkolivegreen")
  (setq font-lock-type-face 'my-type-face)
  )
(set-face-foreground 'font-lock-comment-face "darkolivegreen3")
(set-face-foreground 'font-lock-string-face  "coral")
(set-face-foreground 'font-lock-keyword-face "green")
					;(set-face-foreground 'font-lock-function-name-face "white")
(set-face-foreground 'font-lock-function-name-face "cyan")
					;(set-face-foreground 'font-lock-variable-name-face "white")
(set-face-foreground 'font-lock-type-face "skyblue1")
(set-face-foreground 'font-lock-warning-face "yellow")
(set-face-foreground 'font-lock-builtin-face "goldenrod")
(set-face-background 'highlight "yellow")
(set-face-foreground 'highlight "black")
(set-face-background 'region "lightgoldenrod2")
(set-face-foreground 'region "black")
(set-face-foreground 'mode-line "skyblue1")
(set-face-background 'mode-line "grey19")
					;(menu-bar-mode -1)
					;(setq default-tab-width 3)
					;(add-hook 'c-mode-hook '(lambda () (setq tab-width 2)))
					;(set-display-table-slot standard-display-table 'wrap ? )
(defun my-recenter-and-fontify-buffer ()
  (interactive)
  (recenter)
  (font-lock-fontify-buffer))

