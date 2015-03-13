;; package --- Summary
;;; Code:
;;; Commentary:
(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

;;; Key-chord
(require 'key-chord)
(key-chord-mode 1)
;;; Evil mode
;;(require 'evil)
(evil-mode 1)

;;(require 'yasnippet)
(yas-global-mode t)

(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "<C-return>") 'yas-expand)

(add-to-list 'load-path "~/.emacs.d/custom")
(load "00common-setup.el")
(load "ac.el")
(load "helm-custom-config.el")
(load "01.ruby.el")
(load "01projectile.el")
(load "emmet.el")
(load "evil-mode-config.el")
(load "jscript.el")
;(load "flymakeConfig.el")
;(require 'ess-site)
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa".
"http://melpa.milkbox.net/packages/") t)
  )
;; Robe configuration
(add-hook 'ruby-mode-hook 'robe-mode)
;; Standard Jedi.el setting
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
;; dirtree
;;(autoload 'dirtree "dirtree" "Add directory to tree view" t)

(require 'expand-region)
(require 'rvm)
;;(require 'rinari)
;;(rvm-use-default);; use rvm's default ruby for the current Emacs session

(setq auto-mode-alist
      (cons '("\\.erb$" . web-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.html$" . web-mode) auto-mode-alist))

(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")
;(load "~/.emacs.d/nxhtml-master/autostart.el")

;; flycheck configuration
(add-hook 'after-init-hook #'global-flycheck-mode)

(require 'evil-leader)
(global-evil-leader-mode)
(require 'evil-org)

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#000000" "#8b0000" "#00ff00" "#ffa500" "#7b68ee" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(compilation-message-face (quote default))
 '(custom-safe-themes
   (quote
    ("bd115791a5ac6058164193164fd1245ac9dc97207783eae036f0bfc9ad9670e0" "f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" "ce79400f46bd76bebeba655465f9eadf60c477bd671cbcd091fe871d58002a88" "e26780280b5248eb9b2d02a237d9941956fc94972443b0f7aeec12b5c15db9f3" "53c542b560d232436e14619d058f81434d6bbcdc42e00a4db53d2667d841702e" "9bcb8ee9ea34ec21272bb6a2044016902ad18646bd09fdd65abae1264d258d89" "bf648fd77561aae6722f3d53965a9eb29b08658ed045207fe32ffed90433eb52" "90af7d0da6b97c28098177271c1d9198234435a2d1874880ba36e5bdae9da113" "33c5a452a4095f7e4f6746b66f322ef6da0e770b76c0ed98a438e76c497040bb" "7d4d00a2c2a4bba551fcab9bfd9186abe5bfa986080947c2b99ef0b4081cb2a6" "c7359bd375132044fe993562dfa736ae79efc620f68bab36bd686430c980df1c" "90b5269aefee2c5f4029a6a039fb53803725af6f5c96036dee5dc029ff4dff60" "0ebe0307942b6e159ab794f90a074935a18c3c688b526a2035d14db1214cf69c" "a774c5551bc56d7a9c362dca4d73a374582caedb110c201a09b410c0ebbb5e70" default)))
 '(fci-rule-color "#383838")
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#49483E" . 0)
     ("#67930F" . 20)
     ("#349B8D" . 30)
     ("#21889B" . 50)
     ("#968B26" . 60)
     ("#A45E0A" . 70)
     ("#A41F99" . 85)
     ("#49483E" . 100))))
 '(linum-format " %7i ")
 '(magit-diff-use-overlays nil)
 '(sp-ignore-modes-list (quote (minibuffer-inactive-mode)))
 '(syslog-debug-face
   (quote
    ((t :background unspecified :foreground "#A1EFE4" :weight bold))))
 '(syslog-error-face
   (quote
    ((t :background unspecified :foreground "#F92672" :weight bold))))
 '(syslog-hour-face (quote ((t :background unspecified :foreground "#A6E22E"))))
 '(syslog-info-face
   (quote
    ((t :background unspecified :foreground "#66D9EF" :weight bold))))
 '(syslog-ip-face (quote ((t :background unspecified :foreground "#E6DB74"))))
 '(syslog-su-face (quote ((t :background unspecified :foreground "#FD5FF0"))))
 '(syslog-warn-face
   (quote
    ((t :background unspecified :foreground "#FD971F" :weight bold))))
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#272822" "#49483E" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F8F0"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(powerline-evil-normal-face ((t (:inherit powerline-evil-base-face :background "spring green")))))

(setenv "PATH" (concat "/usr/share/smlnj/bin:" (getenv "PATH")))
(setq exec-path (cons "/usr/share/smlnj/bin"  exec-path))

;; PHP auto yasnippets
(require 'php-auto-yasnippets)
(define-key php-mode-map (kbd "C-c C-y") 'yas/create-php-snippet)
(payas/ac-setup)


;; ac-etags
(custom-set-variables
  '(ac-etags-requires 3))

(eval-after-load "etags"
  '(progn
      (ac-etags-setup)))
(add-hook 'php-mode-common-hook 'ac-etags-ac-setup)

(provide 'init)
;;; init.el ends here
