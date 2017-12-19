;;; init-utils.el --- Flycheck setup

;;; Commentary:
;; Util packages for major programming modes.
;; For a more gentle introduction visit http://www.flycheck.org

;;; Code:

(require 'use-package)

(use-package smartparens
  :ensure t
  :pin melpa
  :config
  (progn
    (require 'smartparens-config)
    (smartparens-global-mode 1)))

(use-package indent-guide
  :ensure t
  :pin melpa
  :config
  (progn
    (require 'indent-guide)
    (indent-guide-global-mode 1)))

(provide 'init-utils)

;;; init-utils ends here
