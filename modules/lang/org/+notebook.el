;;; lang/org/+notebook.el -*- lexical-binding: t; -*-

;; While I program, write or plan, I want easy access to notes of various kinds,
;; such as major-mode/language specific notes, or project-specific notes. They
;; can be accessed via `+org/browse-notes-for-major-mode' and
;; `+org/browse-notes-for-project'.

;; (add-hook '+org-init-hook '+org|init-notebook t)

(defvar +org-notes-dir (concat +org-dir "notes/")
  "The directory where the notes are kept.")

(defvar +org-code-notes-dir (concat +org-notes-dir "code/")
  "The directory where programming notes and snippets are kept.")

(defvar +org-project-notes-dir (concat +org-notes-dir "projects/")
  "The directory where project notes are kept.")

(defvar +org-notes-code-alist
  '((js2-mode . "javascript"))
  "An alist mapping certain modes (symbols) to their org notes directory name.
If a mode isn't here, it's guessed by stripping out the -mode suffix and
replacing '+' characters with 'p's.")

;; (defun +org|init-notebook ())

