
;; not show startup message
(setq inhibit-startup-message t)

;; tabstop
(setq-default tab-width 4)

;; font color setting
(global-font-lock-mode t)

;; default indent charactor is 'tab' or 'space'
(setq-default indent-tabs-mode t)

;; tool-bar not show
(custom-set-variables
 '(tool-bar-mode nil nil (tool-bar)))

;; menu-bar not show
(menu-bar-mode nil)

(custom-set-faces)

;; not create backup-file (*.~)
(setq make-backup-files nil)

;; not create backup-file (.#*)
(setq auto-save-default nil)
(setq auto-save-list-file-name nil)
(setq auto-save-list-file-prefix nil)

;; C-k is delete all of line
(setq kill-whole-line t)

;; not auto create next line
(setq next-line-add-newlines nil)

;; scroll step for one line
(setq scroll-conservatively 1)

;; () highlight
(show-paren-mode 1)

;; paren color setting
(setq show-paren-style 'mixed)
(set-face-background 'show-paren-match-face "gray")
(set-face-foreground 'show-paren-match-face "black")

;; show line number in mode line area
(line-number-mode 1)

;; show column number in mode line area
(column-number-mode 1)

;; indent is tab as tabstop = 4 into c-mode
(add-hook 'c-mode-common-hook
		  '(lambda ()
			 (c-set-style "k&r")
			 (setq c-basic-offset 4)
			 (setq indent-tabs-mode t)
			 (setq tab-width 4)))
