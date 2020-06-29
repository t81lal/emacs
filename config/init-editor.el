

;; use spaces only
;; setq-default as ident-tabs-mode is buffer-local
(setq-default indent-tabs-mode nil)

;; trailing whitespace settings
(add-hook 'before-save-hook #'delete-trailing-whitespace)
(setq require-final-newline t)

;; use utf8
(set-charset-priority 'unicode)
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(setq default-process-coding-system '(utf-8-unix . utf-8-unix))

;; typing on a selection replaces it
(delete-selection-mode t)

;; better undo
(use-package undo-tree
  :ensure t
  :diminish
  :bind (("C-c _" . undo-tree-visualize))
  :config
  (global-undo-tree-mode +1)
  (unbind-key "M-_" undo-tree-map))

;; remap comment key
(bind-key "C-c /" #'comment-dwim)

;; better line goto
(use-package avy
  :ensure t
  :bind ("C-c l" . avy-goto-line))