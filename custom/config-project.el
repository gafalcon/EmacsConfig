;; package --- Projectile dired y neotree Summary
;;; Code:
;;; Commentary:

(setq ;; Always copy/delete recursively
      dired-recursive-copies  'always
      dired-recursive-deletes 'top
      ;; Auto refresh dired, but be quiet about it
      global-auto-revert-non-file-buffers t
      auto-revert-verbose nil)

;; List directories first
(defun doom|dired-sort ()
  "Dired sort hook to list directories first."
  (save-excursion
    (let (buffer-read-only)
      (forward-line 2) ;; beyond dir. header
      (sort-regexp-fields t "^.*$" "[ ]*." (point) (point-max))))
  (and (featurep 'xemacs)
       (fboundp 'dired-insert-set-properties)
       (dired-insert-set-properties (point-min) (point-max)))
  (set-buffer-modified-p nil))
(add-hook 'dired-after-readin-hook 'doom|dired-sort)

(use-package dired-k
  :after dired
  :config
  (setq dired-k-style 'git)
  (add-hook 'dired-initial-position-hook 'dired-k)
  (add-hook 'dired-after-readin-hook #'dired-k-no-revert))

(require 'grizzl)
(use-package projectile
  :config
  (setq projectile-enable-caching t
        projectile-indexing-method 'git
	projectile-completion-system 'grizzl
        )

  ;; Press command-p for fuzzy find in project
  (global-set-key (kbd "s-p") 'projectile-find-file)
  ;; Press command-b for fuzzy switch buffer
  (global-set-key (kbd "s-b") 'projectile-switch-to-buffer)

  ;; Don't cache ignored files!
  (defun doom*projectile-cache-current-file (orig-fun &rest args)
    (unless (--any (f-descendant-of? buffer-file-name it)
                   (projectile-ignored-directories))
      (apply orig-fun args)))
  (advice-add 'projectile-cache-current-file :around 'doom*projectile-cache-current-file)

  (push "assets"   projectile-globally-ignored-directories)
  (push ".cask"    projectile-globally-ignored-directories)
  (push ".sync"    projectile-globally-ignored-directories)
  (push ".elc"     projectile-globally-ignored-file-suffixes)
  (push ".project" projectile-globally-ignored-file-suffixes)
  (push "Icon"   projectile-globally-ignored-files)

  (projectile-global-mode +1))
  
(provide 'config-project.el)
;;; config-project.el ends here
