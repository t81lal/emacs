;; haskell specific tooling

(require 'use-package)


(use-package haskell-mode
  :ensure t
  :mode ("\\.hs\\'" . haskell-mode)
        ("\\.lhs\\'" . haskell-mode))

(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(eval-after-load 'haskell-mode
  (define-key haskell-interactive-mode-map (kbd "C-j") #'haskell-interactive-mode-history-next))


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
