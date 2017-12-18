;;; init.el --- my Emacs Init File
;; Author: Jair Revilla <jair.revilla@gmail.com>
;; Keywords: Emacs, dotfile, config

;;; Code:
;; This file is only provided as an example. Customize it to your own taste!

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(delete-selection-mode t)
 '(fill-column 80)
 '(flycheck-highlighting-mode (quote symbols))
 '(global-auto-revert-mode t)
 '(global-font-lock-mode t)
 '(global-linum-mode t)
 '(indent-tabs-mode nil)
 '(make-backup-files nil)
 '(package-selected-packages (quote (use-package)))
 '(prefer-coding-system (quote utf-8))
 '(show-paren-delay 0)
 '(show-paren-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 90 :width normal)))))

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'bind-key)
