
;; Stop package-initialize being called after init.el
(setq package-enable-at-startup nil)

;; Use package.el to get use-package
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Get use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;; and load it
(eval-when-compile (require 'use-package))

;; Increase gc threshold to reduce startup pressure
(setq gc-cons-threshold (* 500 1024 1024))

;; TODO: decide if needed
;; Set the path variable
;;(use-package exec-path-from-shell
;;  :ensure t
;; :config (exec-path-from-shell-initialize))

(load-file "~/.emacs.d/config/init-face.el")
(load-file "~/.emacs.d/config/init-general.el")
(load-file "~/.emacs.d/config/init-editor.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (avy undo-tree use-package doom-themes doom-modeline dimmer diminish centaur-tabs all-the-icons-dired))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
