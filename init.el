;;; init.el --- 'bilb-macs' entry point

;;; Commentary:
;; This is the entry point of my personal Emacs configuration.
;; In this file, we do some pre-configuration stuff such as including package.el and use-package for
;; pulling other packages from the (m)elpa repositories later on.

;;; Code:

;; Stop package-initialize being called after this file is executed as we call it ourselves
;; manually to perform the initialisation
(setq package-enable-at-startup nil)

;; Use package.el to get use-package
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
;; For important compatibility libraries like cl-lib
;;  this line is taken from the org-ref README file
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; Get use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;; and load it
(eval-when-compile (require 'use-package))

;; Increase gc threshold to reduce startup pressure
(setq gc-cons-threshold 100000000
      read-process-output-max (* 1024 1024))

;; TODO: decide if needed
;; Set the path variable
;;(use-package exec-path-from-shell
;;  :ensure t
;; :config (exec-path-from-shell-initialize))

(load-file "~/.emacs.d/config/init-face.el")
(load-file "~/.emacs.d/config/init-general.el")
(load-file "~/.emacs.d/config/init-editor.el")
(load-file "~/.emacs.d/config/init-haskell.el")
(load-file "~/.emacs.d/config/init-org.el")
(load-file "~/.emacs.d/config/init-roam.el")

;; all of the customize.el configuration code will be redirected to custom.el so as to not
;; clutter this file
(setq custom-file "custom.el")

;;; init.el ends here
