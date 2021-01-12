;; Adding a custom splash screen with some nice ASCII art 
(setq inhibit-splash-screen t)
(setq initial-scratch-message "¯\_(ツ)_/¯")

;; Visual appearence
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)
(blink-cursor-mode -1)

;;(set-fringe-mode 10)

(load-theme 'wombat)

;; Set up built-in package manager
(require 'package)

;; Setting package repositories
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))

(package-initialize)
;;(package-refresh-contents)
 


;;(defun file-to-string (file)
;;  "File to string function"
;;  (with-temp-buffer
;;    (insert-file-contents file)
;;    (buffer-string)))
;;
;;(setq initial-scratch-message
;;      (file-to-string "/home/borneo/.emacs.d/splash.txt"))


;; Use external file for customizations from the GUI
;;(setq custom-file "~/.emacs.d/custom.el")
;;(load custom-file)     
;;
;;;; Start in fullscreen
;;(add-to-list 'default-frame-alist '(fullscreen . maximized))
;;
;
;;;; Line wrap
;;(global-visual-line-mode t)
;;
;;;; No backup files
;;(setq make-backup-files nil)
;;
;;;; Show matching parenthesis
;;(show-paren-mode 1)
;;
;;;; Higlight current line
;;(global-hl-line-mode +1)
;;
;;;; statusbar info
;;(column-number-mode t)
;;(size-indication-mode t)
;;
;
;
;;;; Get the use-package macro to work by the use-package package
;;(unless (package-installed-p 'use-package)
;;  (package-refresh-contents)
;;  (package-install 'use-package))
;;
;;;; THEME
;;;; TODO I am not sure why but use-package and spacemacs theme does not like eachother
;;;;      and I get weird error messages.
;;;;      get to debug this
;;;; (use-package spacemacs-theme
;;;;   :ensure t
;;;;   :init
;;;;   :config
;;;;   (load-theme 'spacemacs-dark t))
(load-theme 'spacemacs-dark t)
;;
;;;; VTERM
;;(use-package vterm
;;  :ensure t)
;;
;;;; Opening a vterm at the bottom of the screen with super-enter
;;;; TODO Understand how to wite defuns for commands
;;;; TODO Also there should be a way that the term window will always be at the bottom and full width
;;;; TODO Add Toggle to super-enter because I don't want a new terminal always as I open
;;;; TODO As vterm window is visible super-enter should close that window
;;;;(defun borneo/open-vterm-below ()
;;;;  (interactive "p")
;;;;  (split-window-below)
;;;;  (other-window)
;;;;  (vterm)
;;;;  (evil-insert))
;;;;
;;;;(global-set-key (kbd "<s-return>") 'borneo/open-vterm-belowe
;;
;;;; LSP-MODE
;;(use-package lsp-mode
;;  :commands (lsp lsp-deferred)
;;  :init
;;  (setq lsp-keymap-prefix "C-c l")
;;  :config
;;  (lsp-enable-which-key-integration t))
;;
;;;; EVIL
;;;; TODO: put mappings into the use-package macro 
;;(use-package evil
;;  :demand t
;;  :config
;;  (evil-mode 1))
;;
;;;; Make undo work as in vim
;;(setq evil-want-fine-undo t)
;;
;;;; Custom commands
;;(evil-ex-define-cmd "q" 'kill-this-buffer)
;;(evil-ex-define-cmd "quit" 'evil-quit)
;;
;;(defun borneo/save-and-kill-buffer (arg)
;;  (interactive "p")
;;  (save-buffer)
;;  (kill-this-buffer))
;;
;;(evil-ex-define-cmd "wq" 'borneo/save-and-kill-buffer)
;;
;;
;;;; Switching buffers
;;(global-set-key (kbd "<s-right>") 'next-buffer)
;;(global-set-key (kbd "<s-left>") 'previous-buffer)
;;(global-set-key (kbd "<s-down>") 'buffer-menu)
;;
;;;;;; Split horizontally by default
;;;;(setq split-width-threshold nil)
;;;;
;;;;
;;;;;; ORG MODE
;;;;;; Headlines should be indented
;;;;(setq org-startup-indented t)
;;;;
;;;;;; Stars should be hided
;;;;(setq org-hide-leading-stars t)
;;;;
;;;; Capture template for my Notes
;;;;(add-to-list 'org-structure-template-alist
;;;;             '("P" "#+TITLE:\n#+OPTIONS: html-postamble:nil whn:nil toc:nil nav:nil\n#+HTML_HEAD:\n#+HTML_HEAD_EXTRA:\n\n? "))
;;
;;(use-package org-bullets
;;  :config
;;  (org-bullets-mode 1))
;;
;;


