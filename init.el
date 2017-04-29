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
(load "config-company.el")
(load "config-helm.el")
(load "config-project.el")
(load "config-neotree.el")
(load "config-org.el")
;; (load "config-flymake.el")

;; Languages
(load "config-web.el")
(load "config-python.el")
(load "config-js.el")
(load "config-typescript.el")
(load "config-php.el")
(load "config-c.el")
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
 '(ansi-color-names-vector
   ["#ecf4ee" "#b16139" "#489963" "#a07e3b" "#478c90" "#55859b" "#478c90" "#526057"])
 '(ansi-term-color-vector
   [unspecified "#ecf4ee" "#b16139" "#489963" "#a07e3b" "#478c90" "#55859b" "#478c90" "#526057"] t)
 '(custom-safe-themes
   (quote
    ("12670281275ea7c1b42d0a548a584e23b9c4e1d2dabb747fd5e2d692bcd0d39b" "36746ad57649893434c443567cb3831828df33232a7790d232df6f5908263692" "aea30125ef2e48831f46695418677b9d676c3babf43959c8e978c0ad672a7329" "1263771faf6967879c3ab8b577c6c31020222ac6d3bac31f331a74275385a452" "93268bf5365f22c685550a3cbb8c687a1211e827edc76ce7be3c4bd764054bad" "73ad471d5ae9355a7fa28675014ae45a0589c14492f52c32a4e9b393fcc333fd" "9be1d34d961a40d94ef94d0d08a364c3d27201f3c98c9d38e36f10588469ea57" "b8929cff63ffc759e436b0f0575d15a8ad7658932f4b2c99415f3dde09b32e97" "2a998a3b66a0a6068bcb8b53cd3b519d230dd1527b07232e54c8b9d84061d48d" "16dd114a84d0aeccc5ad6fd64752a11ea2e841e3853234f19dc02a7b91f5d661" "dd4628d6c2d1f84ad7908c859797b24cc6239dfe7d71b3363ccdd2b88963f336" "9c4acf7b5801f25501f0db26ac3eee3dc263ed51afd01f9dcfda706a15234733" "85d609b07346d3220e7da1e0b87f66d11b2eeddad945cac775e80d2c1adb0066" "e1498b2416922aa561076edc5c9b0ad7b34d8ff849f335c13364c8f4276904f0" "5a39d2a29906ab273f7900a2ae843e9aa29ed5d205873e1199af4c9ec921aaab" "840db7f67ce92c39deb38f38fbc5a990b8f89b0f47b77b96d98e4bf400ee590a" "a62f0662e6aa7b05d0b4493a8e245ab31492765561b08192df61c9d1c7e1ddee" "04790c9929eacf32d508b84d34e80ad2ee233f13f17767190531b8b350b9ef22" "e04cdda50908b116031c09d7b316fff5d8f9bc6e2126411c9316969461bfd8b6" "5228973368d5a1ac0cbea0564d0cd724937f52cc06a8fd81fc65a4fa72ff837b" "f5f3a6fb685fe5e1587bafd07db3bf25a0655f3ddc579ed9d331b6b19827ea46" "9955cc54cc64d6c051616dce7050c1ba34efc2b0613d89a70a68328f34e22c8f" "8578750fb94f908249a98dc14c3847d11863196f54de87a037b1374f2ae1f534" "5f99055206ed6a1b9958f7dd5eaa9f884f8b5a8678bd0c5e2622aced5c4a1be7" "52741e091463c2217af9327e2b2d74d0df861ecc3ad6131b6cbcb8d76b7a4d3d" "ccde32eaf485eb7579412cd756d10b0f20f89bff07696972d7ee46cb2e10b89d" "4605ce6e798971d215b01844ea39e993d683aa2fa118e02e263539298f9f3921" "542e6fee85eea8e47243a5647358c344111aa9c04510394720a3108803c8ddd1" "159aab698b9d3fb03b495ce3af2d298f4c6dfdf21b53c27cd7f472ee5a1a1de3" "ffac21ab88a0f4603969a24b96993bd73a13fe0989db7ed76d94c305891fad64" "45a8b89e995faa5c69aa79920acff5d7cb14978fbf140cdd53621b09d782edcf" "41eb3fe4c6b80c7ad156a8c52e9dd6093e8856c7bbf2b92cc3a4108ceb385087" "cabc32838ccceea97404f6fcb7ce791c6e38491fd19baa0fcfb336dcc5f6e23c" "3e34e9bf818cf6301fcabae2005bba8e61b1caba97d95509c8da78cff5f2ec8e" "1d079355c721b517fdc9891f0fda927fe3f87288f2e6cc3b8566655a64ca5453" "92192ea8f0bf04421f5b245d906701abaa7bb3b0d2b3b14fca2ee5ebb1da38d8" "760ce657e710a77bcf6df51d97e51aae2ee7db1fba21bbad07aab0fa0f42f834" "34ed3e2fa4a1cb2ce7400c7f1a6c8f12931d8021435bad841fdc1192bd1cc7da" "b3bcf1b12ef2a7606c7697d71b934ca0bdd495d52f901e73ce008c4c9825a3aa" "fc7fd2530b82a722ceb5b211f9e732d15ad41d5306c011253a0ba43aaf93dccc" "38e64ea9b3a5e512ae9547063ee491c20bd717fe59d9c12219a0b1050b439cdd" "6254372d3ffe543979f21c4a4179cd819b808e5dd0f1787e2a2a647f5759c1d1" "a1289424bbc0e9f9877aa2c9a03c7dfd2835ea51d8781a0bf9e2415101f70a7e" "eb0a314ac9f75a2bf6ed53563b5d28b563eeba938f8433f6d1db781a47da1366" "ef479623c75026d8ba1de98a8cb74198f6f3eedc6fca509990ac2559ba830675" default)))
 '(package-selected-packages
   (quote
    (telephone-line ox-twbs org-bullets base16-theme evil-terminal-cursor-changer rtags company-irony irony company-jedi company-web company-tern company-dict company-statistics company-quickhelp evil-mc dired-k evil-magit yaml-mode windata web-mode virtualenvwrapper use-package tree-mode tide tern-auto-complete tangotango-theme sublime-themes solarized-theme sml-mode smartparens scala-mode2 rvm ruby-compilation robe rhtml-mode restclient-helm react-snippets rainbow-mode python-django pyflakes projectile-rails php-refactor-mode php-auto-yasnippets paradox pallet nlinum neotree monokai-theme magit lua-mode key-chord jump jinja2-mode jade-mode impatient-mode httprepl helm-swoop helm-projectile helm-mt helm-gtags helm-c-yasnippet haskell-mode haml-mode grizzl git function-args flycheck-pyflakes find-file-in-project expand-region evil-tutor evil-tabs evil-org evil-multiedit evil-god-state evil-anzu etags-select ensime enh-ruby-mode dracula-theme doom-themes discover-my-major cyberpunk-theme color-theme-sanityinc-tomorrow auto-complete-c-headers auctex atom-one-dark-theme atom-dark-theme ample-theme ag ac-js2 ac-helm ac-etags ac-emmet ac-c-headers ac-anaconda)))
 '(paradox-automatically-star t)
 '(paradox-github-token t))


;; ;; ac-etags
;; (eval-after-load "etags"
;;   '(progn
;;       (ac-etags-setup)))
;; (add-hook 'php-mode-common-hook 'ac-etags-ac-setup)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent) ;; Turn on tab identation in haskell


(provide 'init)
;;; init.el ends here
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil))))
 '(company-scrollbar-bg ((t (:background "#444"))))
 '(company-tooltip ((t (:background "dim gray" :foreground "white")))))
