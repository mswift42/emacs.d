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

(set-frame-font "Camingo Code 10")

(provide 'init-local)
