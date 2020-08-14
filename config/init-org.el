;;; init-org.el --- My personal org-mode configuration

;;; Commentary:
;; I have a few things in mind I want to use Emacs org-mode for:
;;  1. Taking personal notes and keeping them organised, like a diary
;;  2. Making notes on academic literature, books and articles and linking them together (thinking roam)
;;  3. Keeping a schedule and a list of tasks that need to be completed
;;  4. Scheduling reoccurrences, e.g. Duolingo reminders, break timers, extra curriculars, etc.

;;; Code:
(use-package org-ref
  :ensure t)

;; Line wrapping in org mode
(add-hook 'org-mode-hook #'toggle-word-wrap)

;;; init-org.el ends here
