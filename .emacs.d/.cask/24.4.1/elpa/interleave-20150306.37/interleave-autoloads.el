;;; interleave-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "interleave" "interleave.el" (21760 44861 310820
;;;;;;  751000))
;;; Generated autoloads from interleave.el

(autoload 'interleave "interleave" "\
Interleaving your text books since 2015.

In the past, textbooks were sometimes published as /interleaved/ editions. That meant, each page
was followed by a blank page and the ambitious student/scholar had the ability to take his notes directly
in her copy of the textbook. Newton and Kant were prominent representatives of this technique.

Nowadays textbooks (or lecture material) come in PDF format. Although almost every PDF has the ability to add some notes to the PDF itself, it is not as powerful as it could be.
This is what this minor mode tries to accomplish. It presents your PDF side by side to an [[http://orgmode.org][Org Mode]] buffer with you notes.
Narrowing down to just those passages that are relevant to this particular page in the document viewer.

Usage:

Create a Org file thath will keep your notes. In the Org headers section add
#+INTERLEAVE_PDF: /the/path/to/your/pdf.pdf

Then start 'interleave' with
M-x interleave

To insert a note for a page, type 'i'.
Navigation is the same as in `doc-view-mode'.

\(fn &optional ARG)" t nil)

(autoload 'interleave-docview-mode "interleave" "\
Interleave view for doc-view

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; interleave-autoloads.el ends here
