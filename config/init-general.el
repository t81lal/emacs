;;; package ---  Miscellaneous configuration elements

;;; Commentary:
;; This file contains configuration stuff that I couldn't yet fit into another config file
;; or that I thought didn't justify it's own file yet.

;;; Code:

(setq
  ;; prompts use minibuffer
  use-dialog-box nil
  ;; C-k delete whole line
  kill-whole-line t
)


; y/n instead of yes/no
(defalias 'yes-or-no-p 'y-or-n-p)

;;; init-general.el ends here
