;; melpa
(require 'package)

;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
(add-to-list 'package-archives (cons "melpa"  "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
(package-initialize)

;; hide customize stuff in separate file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)


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

;; better projectile find
(require 'helm-projectile)
(helm-projectile-on)

(require 'clang-format)
(add-hook 'c-mode-common-hook
          (function (lambda ()
                    (add-hook 'before-save-hook
                              'clang-format-buffer))))
(setq clang-format-style-option "file")

(require 'exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
