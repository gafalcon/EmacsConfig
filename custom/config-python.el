;;; package -- Summary

;;; Commentary: 
;;; Code:

;; (defun project-directory (buffer-name)
;;   "Returns the root directory of the project that contains the
;; given buffer. Any directory with a .git or .jedi file/directory
;; is considered to be a project root."
;;   (interactive)
;;   (let ((root-dir (file-name-directory buffer-name)))
;;     (while (and root-dir
;;                 (not (file-exists-p (concat root-dir ".git")))
;;                 (not (file-exists-p (concat root-dir ".jedi"))))
;;       (setq root-dir
;;             (if (equal root-dir "/")
;;                 nil
;;               (file-name-directory (directory-file-name root-dir)))))
;;     root-dir))

;; (defun project-name (buffer-name)
;;   "Returns the name of the project that contains the given buffer."
;;   (let ((root-dir (project-directory buffer-name)))
;;     (if root-dir
;;         (file-name-nondirectory
;;          (directory-file-name root-dir))
;;       nil)))

;; (defun jedi-setup-venv ()
;;   "Activates the virtualenv of the current buffer."
;;   (let ((project-name (project-name buffer-file-name)))
;;     (when project-name (venv-workon project-name))))

(setq jedi:environment-root "jedi2"  ; or any other name you like
      jedi:environment-virtualenv (list "virtualenv2" "--system-site-packages")
      jedi:complete-on-dot t
      jedi:tooltip-method nil
      )
;;(setq jedi:setup-keys t)

;;(add-hook 'python-mode-hook 'jedi-setup-venv)
(add-hook 'python-mode-hook 'jedi:setup)
(defun my/python-mode-hook ()
  "Add new backends on python mode."
  (add-to-list 'company-backends '(company-jedi :with company-dabbrev-code company-yasnippet)))

(add-hook 'python-mode-hook 'my/python-mode-hook)
; use IPython
(setq python-shell-interpreter "ipython2"
       python-shell-interpreter-args "-i")

(evil-define-key 'normal python-mode-map "gd" 'jedi:goto-definition)

;;(provide 'python_jedi_venv)
;;; python_jedi_venv.el ends here
