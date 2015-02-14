(defun disable-all-themes ()
  "disable all custom enabled themes"
  (dolist (i custom-enabled-themes)
    (disable-theme i)))

(defadvice load-theme (before disable-themes-first activate)
  (disable-all-themes))


(load-theme 'greymatters)
(global-hl-line-mode t)
(require-package 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-hook 'web-mode-hook 'emmet-mode t)

(set-frame-font "Camingo Code 10")

(setq backup-directory-alist '(("." . "~/emacs.saves/")))

(require-package 'hydra)

(defhydra hydra-zoom (global-map "<f2>")
  "zoom"
  ("g" text-scale-increase "in")
  ("l" text-scale-decrease "out"))


(provide 'init-local)
