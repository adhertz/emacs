;; hide customize stuff
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; melpa
(require 'package)

;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
(add-to-list 'package-archives (cons "melpa"  "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)

(package-initialize)

;; helm
(require 'helm-config)
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(helm-mode 1)

;; convenient stuff
(require 'better-defaults)

;; pretty colors
(load-theme 'zenburn t)

;; projectile
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; magit
(global-set-key (kbd "C-x g") 'magit-status)
;;(global-magit-file-mode 1)

;; smart parens
(require 'smartparens-config)
