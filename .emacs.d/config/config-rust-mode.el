(add-hook 'flycheck-mode-hook 'flycheck-rust-setup)

(add-hook 'rust-mode-hook 'subword-mode)
(add-hook 'rust-mode-hook 'racer-mode)
(add-hook 'rust-mode-hook 'rust-enable-format-on-save)
(add-hook 'rust-mode-hook 'flycheck-mode)
(add-hook 'rust-mode-hook 'cargo-minor-mode)
(add-hook 'rust-mode-hook (lambda ()
                            (make-local-variable 'whitespace-line-column)
                            (setq whitespace-line-column 100)))
(add-hook 'rust-mode-hook (lambda ()
                            (setq fill-column 100)))

(add-hook 'racer-mode-hook 'eldoc-mode)
(add-hook 'racer-mode-hook 'company-mode)
(add-hook 'racer-mode-hook
          (lambda ()
            (local-set-key (kbd "M-.") #'racer-find-definition)
            (local-set-key (kbd "TAB") #'company-indent-or-complete-common)
            (setq-local company-idle-delay 0.4)
            (setq-local company-minimum-prefix-length 1)))

(provide 'config-rust-mode)
