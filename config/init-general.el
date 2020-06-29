;; misc config elements

(require 'use-package)

(setq
  ;; prompts use minibuffer
  use-dialog-box nil
  ;; C-k delete whole line
  kill-whole-line t
)


; y/n instead of yes/no
(defalias 'yes-or-no-p 'y-or-n-p)