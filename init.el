;; package --- Summary
;;; Code:
;;; Commentary:
(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'pallet)
(pallet-mode t)

;;(require 'yasnippet)
(yas-global-mode t)

(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "<C-return>") 'yas-expand)


(add-to-list 'load-path "~/.emacs.d/custom")
(load "config-core.el")
(load "config-ui.el")
(load "config-evil.el")
(load "ac.el")
(load "config-helm.el")
(load "config-project.el")
;;(load "cpp_configs.el")
;; (load "01.ruby.el")
(load "emmet.el")
(load "python_jedi_venv.el")
(load "jscript.el")
(load "02typescript.el")
(load "phpconfig.el")
(load "flymakeConfig.el")
(load "neotree_custom.el")
;(require 'ess-site)
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  )
;; Robe configuration
; (add-hook 'ruby-mode-hook 'robe-mode)

;; -------- Python configs -----------------
;; Standard Jedi.el setting

;;(add-hook 'python-mode-hook 'jedi:setup)
;; (add-hook 'python-mode-hook (lambda ()
;;                               (hack-local-variables)
;;                               (venv-workon project-venv-name)))
;;(setq jedi:complete-on-dot t)
;; (add-hook 'python-mode-hook 'anaconda-mode)
;; (add-hook 'python-mode-hook 'anaconda-eldoc-mode)
;; (add-hook 'python-mode-hook 'ac-anaconda-setup)

(require 'rvm)
;;(rvm-use-default);; use rvm's default ruby for the current Emacs session

(setq auto-mode-alist
      (cons '("\\.erb$" . web-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.html$" . web-mode) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.blade.php$" . web-mode))
;; web-mode engines
(setq web-mode-engines-alist '(("php" . "\\.phtml\\'") ("blade" . "\\.blade\\.")) )

(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")

;; flycheck configuration
(add-hook 'after-init-hook #'global-flycheck-mode)


;; (require 'ensime)
;; (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("eb0a314ac9f75a2bf6ed53563b5d28b563eeba938f8433f6d1db781a47da1366" "ef479623c75026d8ba1de98a8cb74198f6f3eedc6fca509990ac2559ba830675" default)))
 '(package-selected-packages
   (quote
    (dired-k evil-magit yaml-mode windata web-mode virtualenvwrapper use-package tree-mode tide tern-auto-complete tangotango-theme sublime-themes solarized-theme sml-mode smartparens scala-mode2 rvm ruby-compilation robe rhtml-mode restclient-helm react-snippets rainbow-mode python-django pyflakes projectile-rails powerline-evil php-refactor-mode php-auto-yasnippets paradox pallet nlinum neotree monokai-theme magit lua-mode key-chord jump jinja2-mode jedi jade-mode impatient-mode httprepl helm-swoop helm-projectile helm-mt helm-gtags helm-c-yasnippet haskell-mode haml-mode grizzl git function-args flycheck-pyflakes find-file-in-project expand-region evil-tutor evil-tabs evil-org evil-multiedit evil-god-state evil-anzu etags-select ensime enh-ruby-mode dracula-theme doom-themes discover-my-major cyberpunk-theme color-theme-sanityinc-tomorrow auto-complete-c-headers auctex atom-one-dark-theme atom-dark-theme ample-theme ag ac-js2 ac-helm ac-etags ac-emmet ac-c-headers ac-anaconda)))
 '(paradox-automatically-star t)
 '(paradox-github-token t t))


;; ac-etags
(eval-after-load "etags"
  '(progn
      (ac-etags-setup)))
(add-hook 'php-mode-common-hook 'ac-etags-ac-setup)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent) ;; Turn on tab identation in haskell



(provide 'init)
;;; init.el ends here
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
