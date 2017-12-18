;;; init-flycheck.el --- Flycheck setup

;;; Commentary:
;; For a more gentle introduction visit http://www.flycheck.org

;;; Code:

(require 'use-package)

(use-package flycheck
  :ensure t
  :pin melpa
  :bind (("<f4>" . flycheck-previous-error)
         ("<f5>" . flycheck-next-error))
  :custom
  (flycheck-highlighting-mode (quote symbols))
  :custom-face
  (flycheck-error ((t (:background "red1" :foreground "white"))))
  (flycheck-warning ((t (:background "dark orange" :foreground "white"))))
  :custom-face
  (flycheck-info ((t (:background "forest green" :foreground "white"))))
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))

(provide 'init-flycheck)

;;; init-flycheck ends here
