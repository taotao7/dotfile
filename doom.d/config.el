(setq user-full-name "Eliot Tao"
      user-mail-address "moca_tao7@foxmail.com")
(setq doom-theme 'doom-gruvbox)
(setq org-directory "~/org/")
(setq display-line-numbers-type t)
;; font
(setq doom-font (font-spec :family "CaskaydiaCove Nerd Font" :size 14 :weight 'light))

;; show time
(display-time-mode t)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
;; c/c++ calngd config
(setq lsp-clients-clangd-args '("-j=3"
                                "--background-index"
                                "--clang-tidy"
                                "--completion-style=detailed"
                                "--header-insertion=never"
                                "--header-insertion-decorators=0"))
(after! lsp-clangd (set-lsp-priority! 'clangd 2))

;; tsx lsp prettier
(setq-hook! 'typescript-mode-hook +format-with-lsp nil)
(setq-hook! 'typescript-tsx-mode-hook +format-with-lsp nil)

;; max full sreen
(add-hook 'window-setup-hook #'toggle-frame-fullscreen)
