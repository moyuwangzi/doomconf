;; package-- doom主题设置
;;; code:
(setq doom-theme 'doom-one)
;; 字体设置
(setq main-font-size 18)
(setq doom-font (font-spec :family "Hack Nerd Font" :size main-font-size :weight 'regular)
      doom-variable-pitch-font(font-spec :family "WenQuanYi Zen Hei" :size main-font-size :weight 'regular)
      doom-serif-font(font-spec :family "CodeNewRoman Nerd Font" :size main-font-size :weight 'light )
      doom-big-font (font-spec :family "CodeNewRoman Nerd Font" :size main-font-size :weight 'regular)
      )
;; 显示相对行号
(setq display-line-numbers-type 'relative) ;; nil为关闭，t为默认行号
;; 窗口大小
(pushnew! initial-frame-alist '(width . 150) '(height . 50))
;; 退出插入模式时禁用光标移动
(setq evil-move-cursor-back nil)

; org 部分修改
;; superstar 配置
(setq org-superstar-headline-bullets-list '("☰" "☱" "☲" "☳" "☴" "☵" "☶" "☷"))
;; (setq org-superstar-prettify-item-bullets )
(setq org-ellipsis "⬇️")
(setq! prettify-symbols-alist '(("#+BEGIN_SRC" . "")
                                       ("#+END_SRC" . "†")
                                      ("#+begin_src" . "†")
                                       ("#+end_src" . "†")
                                       (">=" . "≥")
                                       ("=>" . "⇨")))
(setq prettify-symbols-unprettify-at-point 'right-edge)

(add-hook 'org-mode-hook 'prettify-symbols-mode)
(add-hook 'org-mode-hook 'org-num-mode)
(setq-default org-hide-emphasis-markers t)

(add-hook 'org-mode-hook #'xenops-mode)
(add-hook 'latex-mode-hook #'xenops-mode)
(add-hook 'LaTeX-mode-hook #'xenops-mode)
;; ~/.doom.d/ui/builtinui.el
(message "personal ui setting has been loaded")
(provide 'binui)
;;;
