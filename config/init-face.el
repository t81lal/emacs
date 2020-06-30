;; ui/face config elements

(require 'use-package)

;; Get rid of splash screen
(setq inhibit-splash-screen t)

;; line numbers
(global-linum-mode)
;; column numbers
(column-number-mode)

;; window clutter
(when (window-system)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (menu-bar-mode -1)
  (scroll-bar-mode -1))


;; use visible bell instead of sound
(setq
  visible-bell t
  ring-bell-function 'ignore)

;; install and load theme
;;  spacemacs-theme is not a feature, it's just a package so
;;  there is no autoload and thus :ensure and :config will
;;  not work here
;;(use-package spacemacs-theme
;;  :defer t
;;  :init (load-theme 'spacemacs-dark t)) ;; t here disables confirmation
;; alternatively: (https://github.com/nashamri/spacemacs-theme/issues/42)
;;(use-package spacemacs-common
;;    :ensure spacemacs-theme
;;    :config (load-theme 'spacemacs-light t))

(use-package doom-themes
  :ensure t
  :config
  (let ((chosen-theme 'doom-challenger-deep))
    (doom-themes-visual-bell-config)
    (doom-themes-org-config)
    (setq doom-challenger-deep-brighter-comments t
          doom-challenger-deep-brighter-modeline t)
    (load-theme chosen-theme t)))

;; icons
;; this prompts the user to download the fonts if they aren't installed
(defun aorst/font-installed-p (font-name)
  "Check if font with FONT-NAME is available."
  (if (find-font (font-spec :name font-name))
      t
    nil))
(use-package all-the-icons
  :config
  (when (and (not (aorst/font-installed-p "all-the-icons"))
             (window-system))
    (all-the-icons-install-fonts t)))


(use-package all-the-icons-dired
  :ensure t
  :after all-the-icons
  :hook (dired-mode . all-the-icons-dired-mode))

(use-package diminish
  :ensure t
  :config (diminish 'eldoc-mode))
  
(use-package doom-modeline
  :ensure t
  :config (doom-modeline-mode 1))
  
(use-package dimmer
  :ensure t
  :custom (dimmer-fraction 0.1)
  :config (dimmer-mode))
  
(show-paren-mode)

;; set global font
(when (display-graphic-p)
  (set-frame-font "Menlo-12:antialias=normal:spacing=m" nil t)
  (mapc 
    (lambda
      (face)
      (set-face-attribute face nil :weight 'demibold :underline nil))
    (face-list)))

;; ido <3
(require 'ido)
(ido-mode t)

(use-package which-key
  :ensure t
  :init
  (which-key-mode))
