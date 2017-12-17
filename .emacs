;;; ~/.emacs --- my Emacs Init File
;; Author: Jair Revilla <jair.revilla@gmail.com>
;; Keywords: Emacs, dotfile, config

;;; Commentary:
;;  Citations
;;
;;     "Show me your ~/.emacs and I will tell you who you are."
;;                                                         [Bogdan Maryniuk]
;;
;;     "Emacs is like a laser guided missile.  It only has to be slightly
;;      mis-configured to ruin your whole day."
;;                                                            [Sean McGrath]
;;
;;     "While any text editor can save your files, only Emacs can save your
;;      soul."
;;                                                          [Per Abrahamsen]


;;; Code:
;; This file is only provided as an example. Customize it to your own taste!

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(column-number-mode t)
 '(delete-selection-mode t)
 '(fill-column 80)
 '(flycheck-highlighting-mode (quote symbols))
 '(global-auto-revert-mode t)
 '(global-font-lock-mode t)
 '(global-linum-mode t)
 '(prefer-coding-system (quote utf-8))
 '(show-paren-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 90 :width normal))))
 '(flycheck-error ((t (:background "red1" :foreground "white"))))
 '(flycheck-info ((t (:background "forest green" :foreground "white"))))
 '(flycheck-warning ((t (:background "dark orange" :foreground "white")))))

(setq show-paren-delay 0)
(setq make-backup-files nil)
(setq-default indent-tabs-mode nil)

(require 'package)
(setq package-archives '(("org"       . "http://orgmode.org/elpa/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("gnu"       . "http://elpa.gnu.org/packages/")
                         ("melpa"     . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;; Library
(add-to-list 'load-path "~/.emacs.d/elpa/popup-20160709.729/")
(add-to-list 'load-path "~/.emacs.d/elpa/dash-20171028.854/")
(add-to-list 'load-path "~/.emacs.d/elpa/ctable-20171005.1711/")
(add-to-list 'load-path "~/.emacs.d/elpa/concurrent-20161228.1930/")
(add-to-list 'load-path "~/.emacs.d/elpa/deferred-20170901.630/")
(add-to-list 'load-path "~/.emacs.d/elpa/epc-20140609.2234/")
(add-to-list 'load-path "~/.emacs.d/elpa/jedi-core-20170121.610/")
(add-to-list 'load-path "~/.emacs.d/elpa/python-environment-20150310.153/")
(add-to-list 'load-path "~/.emacs.d/elpa/seq-2.20/")
(add-to-list 'load-path "~/.emacs.d/elpa/pkg-info-20150517.443/")
(add-to-list 'load-path "~/.emacs.d/elpa/let-alist-1.0.5/")
(add-to-list 'load-path "~/.emacs.d/elpa/epl-20150517.433/")
(add-to-list 'load-path "~/.emacs.d/elpa/s-20171102.227/")

;; Integration
(add-to-list 'load-path "~/.emacs.d/elpa/google-translate-20170713.119/")

;; Programming
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20170124.1845/")
(add-to-list 'load-path "~/.emacs.d/elpa/indent-guide-20170221.327/")
(add-to-list 'load-path "~/.emacs.d/elpa/smartparens-20171201.242/")
(add-to-list 'load-path "~/.emacs.d/elpa/column-marker-20121128.43/")
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-20170923.1646/")
(add-to-list 'load-path "~/.emacs.d/elpa/flycheck-20171214.1215/")

;; Programming Language
(add-to-list 'load-path "~/.emacs.d/elpa/jedi-20160425.2156/")
(add-to-list 'load-path "~/.emacs.d/elpa/python-django-20150821.2104/")
(add-to-list 'load-path "~/.emacs.d/elpa/web-mode-20171118.1132/")
(add-to-list 'load-path "~/.emacs.d/elpa/virtualenvwrapper-20171119.1403/")
(add-to-list 'load-path "~/.emacs.d/elpa/auctex-12.1.0/")
(add-to-list 'load-path "~/.emacs.d/elpa/js2-mode-20171211.607/")

;; Interface
(add-to-list 'load-path "~/.emacs.d/elpa/powerline-20171023.750/")
(add-to-list 'load-path "~/.emacs.d/elpa/neotree-20170522.758/")
(add-to-list 'load-path "~/.emacs.d/elpa/no-easy-keys-1.0.2/")

;; Theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/solarized-theme-20171215.2313/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/color-theme-sanityinc-solarized-20160429.1903/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/color-theme-sanityinc-tomorrow-20171202.1759/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/moe-theme-20170914.2111/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/zenburn-theme-20171216.1027/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/ample-theme-20161213.912/")

(require 'column-marker)
(add-hook 'c-mode-hook (lambda () (interactive) (column-marker-1 80)))
(add-hook 'c++-mode-hook (lambda () (interactive) (column-marker-1 80)))
(add-hook 'ruby-mode-hook (lambda () (interactive) (column-marker-1 80)))
(add-hook 'python-mode-hook (lambda () (interactive) (column-marker-1 80)))
(add-hook 'java-mode-hook (lambda () (interactive) (column-marker-1 80)))
(add-hook 'perl-mode-hook (lambda () (interactive) (column-marker-1 80)))
(add-hook 'lua-hook (lambda () (interactive) (column-marker-1 80)))
(add-hook 'sh-hook (lambda () (interactive) (column-marker-1 80)))

;; Standard Jedi.el setting
;; Type:
;; M-x jedi:install-server RET
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'jedi:ac-setup)
(setq jedi:complete-on-dot t)
;; Some extra configuration to Jedi.el
;;(defun my-jedi-server-setup ()
;;  (let ((cmds (GET-SOME-PROJECT-SPECIFIC-COMMAND))
;;        (args (GET-SOME-PROJECT-SPECIFIC-ARGS)))
;;    (when cmds (set (make-local-variable 'jedi:server-command) cmds))
;;    (when args (set (make-local-variable 'jedi:server-args) args))))
;;(setq jedi:server-args
;;      '("--virtual-env" "SOME/VIRTUAL_ENV_1"
;;        "--virtual-env" "SOME/VIRTUAL_ENV_2"))
;;(setq jedi:environment-virtualenv
;;      (list "virtualenv3" "--system-site-packages"))
;;(add-hook 'python-mode-hook 'my-jedi-server-setup)

;; Configurations to linter python
(declare-function python-shell-calculate-exec-path "python")
(defun flycheck-virtualenv-set-python-executables ()
  "Set Python executables for the current buffer."
  (let ((exec-path (python-shell-calculate-exec-path)))
    (setq-local flycheck-python-pylint-executable
                (executable-find "pylint"))))

(defun flycheck-virtualenv-setup ()
  "Setup Flycheck for the current virtualenv."
  (when (derived-mode-p 'python-mode)
    (add-hook 'hack-local-variables-hook
              #'flycheck-virtualenv-set-python-executables 'local)))

(add-hook 'after-init-hook #'global-flycheck-mode)


(require 'virtualenvwrapper)
(venv-initialize-interactive-shells)
(venv-initialize-eshell)
(setq venv-location "~/.virtualenvs/")

(require 'js2-mode)
(add-to-list 'auto-mode-alist (cons (rx ".js" eos) 'js2-mode))
(setq js2-strict-missing-semi-warning nil)
(setq js2-basic-offset 2)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  ;(setq-default indent-tabs-mode nil)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq indent-tabs-mode t)
  (setq-default tab-width 4)
  (setq web-mode-enable-current-element-highlight t)
  (setq web-mode-script-padding 1)
  (setq web-mode-style-padding 1)
  (setq web-mode-block-padding 0)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)

(require 'yasnippet)
(yas-global-mode 1)
(setq yas-indent-line 'fixed)

(require 'ido)
(ido-mode t)

(require 'iso-transl)

(require 'auto-complete)
(ac-config-default)
(add-to-list 'ac-modes 'latex-mode)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(require 'indent-guide)
(indent-guide-global-mode)

(require 'smartparens-config)
(smartparens-global-mode)

(require 'powerline)
(powerline-default-theme)

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(require 'no-easy-keys)
(no-easy-keys t)

(require 'google-translate)
(global-set-key (kbd "<f10>") 'google-translate-query-translate)
(global-set-key (kbd "<f11>") 'google-translate-at-point)

(require 'python-django)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-save-query nil)
(setq reftex-plug-into-AUCTeX t)
(setq TeX-view-program-selection '((output-pdf "Atril")))
;(setq-default TeX-master nil) Only if often uses \include commands

(provide '.emacs)

;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; coding: utf-8
;; mode: emacs-lisp
;; End:
;;; .emacs ends here
