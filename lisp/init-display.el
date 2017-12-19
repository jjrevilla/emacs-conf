;;; init-display.el --- Flycheck setup

;;; Commentary:
;; Util packages for major programming modes.
;; For a more gentle introduction visit http://www.flycheck.org

;;; Code:

(require 'use-package)

(use-package powerline
  :ensure t
  :pin melpa
  :config
  (progn
    (require 'powerline)
    (powerline-vim-theme)))

(provide 'init-display)

;;; init-display ends here
