;;; init-roam.el --- org-roam configuration for note taking
;;; Commentary:
;; org-roam is a package used to replicate the Roam Research and
;; Zettelkasten note taking workflow.
;; the org-roam pacakge requires a "sqlite3" executable to be found
;; on the exec-path in Emacs.  This is imported from the PATH environment
;; variable on my machine

;;; Code:
(require 'use-package)

(use-package org-roam
  :ensure t
  :hook
  (after-init . org-roam-mode)
  :custom
  (org-roam-directory "~/org-files/")
  :bind (:map org-roam-mode-map
            (("C-c n l" . org-roam)
             ("C-c n f" . org-roam-find-file)
             ("C-c n g" . org-roam-graph))
         :map org-mode-map
            (("C-c n i" . org-roam-insert))
            (("C-c n I" . org-roam-insert-immediate))))
;;; init-roam.el ends here
