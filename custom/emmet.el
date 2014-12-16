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
