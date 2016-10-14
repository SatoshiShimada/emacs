
;; unvisible menubar
(menu-bar-mode -1)

;; set using shell
(setq shell-file-name "/bin/bash")

;; not show startup message
(setq inhibit-startup-message t)

;; for egg
(add-to-list 'load-path "~/.emacs.d/public_repos/egg")

;; set keyboard shortcut
(define-key global-map (kbd "C-t") 'other-window)

;; set file encoding for utf-8
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)

;; print column number on mode line
(column-number-mode t)

;; print file size
(size-indication-mode t)

;; set full path of opening file at title bar
(setq frame-title-format "%f")

;; set line number at left of window
(global-linum-mode t)
(setq linum-format "%4d")

;; tab stop
(setq-default tab-width 4)

;; tab to space
(setq-default indent-tabs-mode nil)

;; paren-mode
(setq show-paren-delay 0)
(show-paren-mode t)

;; sytle of paren
(setq show-paren-style 'expression)


;; not make backup file
(setq make-backup-files nil)

;; not make auto save file
;(setq auto-save-default nil)
;; delete auto save file when exit
(setq delete-auto-save-files t)

;; scroll step for one line
(setq scroll-conservatively 1)

;; C-k is delete all of line
(setq kill-whole-line t)

;; not blink cursor
(blink-cursor-mode 0)

;; visible whitespace(space, tab, and so on)
;(global-whitespace-mode 1)

;; jump line
(global-set-key "\C-xj" 'goto-line)

;; set message of initial scratch buffer
(setq initial-scratch-message "")

;; setting for Git: Egg
(when (executable-find "git")
  (require 'egg nil t))

;; indent is tab as tabstop=4 into c-mode
(add-hook 'c-mode-common-hook
          '(lambda ()
             (c-set-style "k&r")
             (setq c-basic-offset 4)
             (setq indent-tabs-mode t)
             (setq tab-width 4)))

