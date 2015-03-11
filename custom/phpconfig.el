(flycheck-define-checker my-php
  "A PHP syntax checker using the PHP command line interpreter.

See URL `http://php.net/manual/en/features.commandline.php'."
  :command ("php" "-l" "-d" "error_reporting=E_ALL" "-d" "display_errors=1"
            "-d" "log_errors=0" source)
  :error-patterns
  ((error line-start (or "Parse" "Fatal" "syntax") " error" (any ":" ",") " "
          (message) " in " (file-name) " on line " line line-end))
  :modes (php-mode web-mode))

(defun my-setup-php ()
  ;; enable web mode
  (web-mode)

  ;; make these variables local
  (make-local-variable 'web-mode-code-indent-offset)
  (make-local-variable 'web-mode-markup-indent-offset)
  (make-local-variable 'web-mode-css-indent-offset)

  ;; set indentation, can set different indentation level for different code type
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-markup-indent-offset 2)
  (flycheck-select-checker my-php)
  (flycheck-mode t))

(add-to-list 'auto-mode-alist '("\\.php$" . my-setup-php))
