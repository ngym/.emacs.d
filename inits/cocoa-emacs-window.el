;; Window
(add-to-list 'default-frame-alist '(alpha . 90))
(if window-system 
    (progn
	(setq initial-frame-alist '((font . "fontset-14") (width . 235) (height . 85) (top . 0) (left . 0)))
	(set-background-color "black")
	(set-foreground-color "white")
	(set-cursor-color "Gray")
	(set-frame-parameter nil 'alpha 85)
	)
  )
(setq default-frame-alist initial-frame-alist)

