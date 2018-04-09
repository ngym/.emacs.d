;; Window
(add-to-list 'default-frame-alist '(alpha . 90))
(if window-system 
    (progn
	(setq initial-frame-alist '((font . "-*-Menlo-normal-normal-normal-*-16-*-*-*-m-0-iso10646-1") (width . 175) (height . 85) (top . 0) (left . 0)))
	(set-background-color "black")
	(set-foreground-color "white")
	(set-cursor-color "Gray")
	(set-frame-parameter nil 'alpha 80)
	)
  )
(setq default-frame-alist initial-frame-alist)

