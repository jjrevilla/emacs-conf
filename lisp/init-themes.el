;;; init-themes.el --- Flycheck setup

;;; Commentary:
;; Emacs color themes, currently using a standard Emacs theme.

;;; Code:

(require 'use-package)

(use-package ample-theme
  :ensure t
  :pin melpa)

(use-package color-theme-sanityinc-solarized
  :ensure t
  :pin melpa)

(use-package moe-theme
  :ensure t
  :pin melpa)

(use-package solarized-theme
  :ensure t
  :pin melpa)

(use-package zenburn-theme
  :ensure t
  :pin melpa)

(provide 'init-themes)

;;; init-themes ends here
