;; code/text editor options

;; use spaces only
;; setq-default as ident-tabs-mode is buffer-local
(setq-default indent-tabs-mode nil)

;; trailing whitespace settings
(add-hook 'before-save-hook #'delete-trailing-whitespace)
(setq require-final-newline t)

;; use utf8
(set-language-environment "UTF-8")

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