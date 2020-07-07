;;; package --- Haskell specific packages and tooling

;;; Commentary:
;; My (very) simple Haskell setup at the moment is to use haskell-mode with the ghcide LSP server
;; running in the background but I have noticed some weird behaviour so this may change soon.

;;; Code:
(require 'use-package)

;; use haskell mode
(use-package haskell-mode
  :ensure t
  :mode ("\\.hs\\'" . haskell-mode)
        ("\\.lhs\\'" . haskell-mode))


;; ghcide integration with lsp-haskell ontop of lsp-mode/lsp-ui
(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))
(use-package yasnippet
  :ensure t)
(use-package lsp-mode
  :ensure t
  :hook (haskell-mode . lsp)
  :commands lsp)
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)
(use-package lsp-haskell
 :ensure t
 :config
 (setq lsp-haskell-process-path-hie "ghcide")
 (setq lsp-haskell-process-args-hie '())
 (setq lsp-log-io t)
)


;; for some reason this doesn't work above
;; adds simple history for haskell interactive mode
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(define-key haskell-interactive-mode-map (kbd "C-j") #'haskell-interactive-mode-history-next)

;;; init-haskell.el ends here
