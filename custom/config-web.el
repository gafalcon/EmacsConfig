;;; package --- Mi user web config
;;; Commentary:

;;; Code:
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'web-mode-hook  'emmet-mode) ;; Auto-start on web-mode
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(add-hook 'haml-mode-hook 'emmet-mode)

(add-hook 'haml-mode-hook 'ac-emmet-html-setup)
(add-hook 'web-mode-hook  'ac-emmet-html-setup)
(add-hook 'css-mode-hook  'ac-emmet-css-setup)
(add-hook 'sgml-mode-hook  'ac-emmet-html-setup)
(eval-after-load "emmet-mode"
  '(define-key emmet-mode-keymap (kbd "<C-return>") nil))

;; To position the cursor between first empty quotes after expanding
(setq emmet-move-cursor-between-quotes 1) ;; default nil

(setq auto-mode-alist
      (cons '("\\.erb$" . web-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.html$" . web-mode) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.blade.php$" . web-mode))
;; web-mode engines
(setq web-mode-engines-alist '(("php" . "\\.phtml\\'") ("blade" . "\\.blade\\.")) )

(provide 'config-web.el)
;;; config-web.el ends here
