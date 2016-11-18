;; Emacs setting file
;; for Emacs25

;; add load path
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; auto-install
(when (require 'auto-install nil t)
  (setq auto-install-directory "~/.emacs.d/lisp/")
  (auto-install-update-emacswiki-package-name t)
  (auto-install-compatibility-setup))

;; Anything
(when (require 'auto-install nil t)
  (auto-install-batch "anything")
  (when (require 'anything nil t)
    (setq
     anything-idle-delay 0.2
     anything-input-idle-delay 0.1
     anything-candidate-number-limit 100
     anything-quick-update t
     anything-enable-shortcuts 'alphabet)
    (when (require 'anything-config nil t)
      (setq anything-su-or-sudo "sudo"))
    (require 'anything-match-plugin nil t)
    (when (and (executable-find "cmigemo")
               (require 'migemo nil t))
      (require 'anything-migemo nil t))
    (when (require 'anything-complete nil t)
      (anything-lisp-complete-symbol-set-timer 150))
    (require 'anything-show-complete nil t)
    (when (require 'auto-install nil t)
      (require 'anything-auto-install nil t))
    (when (require 'descbinds-anything nil t)
      (descbinds-anything-install))))

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

;; print line number on mode line
(line-number-mode t)

;; print file size
(size-indication-mode t)

;; set full path of opening file at title bar
(setq frame-title-format "%f")

;; set line number at left of window
(when (require 'linum nil t)
  (global-linum-mode t)
  (setq linum-format "%4d"))

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

;; setting for c/c++
;; indent is tab as tabstop=4 into c-mode
(defun my-c-c++-mode-conf ()
  (c-set-style "k&r")
  (setq c-basic-offset 4)
  (setq indent-tabs-mode t)
  (setq tab-width 4)
  (show-paren-mode t))

(add-hook 'c++-mode-hook 'my-c-c++-mode-conf)

