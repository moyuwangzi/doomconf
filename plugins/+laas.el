;; (add-to-list 'load-path "~/.emacs.d/site-lisp/LaTeX-auto-activating-snippets")

(use-package laas
  :hook (LaTeX-mode . laas-mode)
  :hook (org-mode . laas-mode)
  :config ; do whatever here
  (aas-set-snippets 'laas-mode
                    ;; set condition!
                    :cond #'org-inside-LaTeX-fragment-p
                    ;; bind to functions!
                    ;;自用snippets
                    ;;希腊字母
                    "sigma" "\\sigma"
                    "alpha" "\\alpha"
                    "eps" "\\epsilon"
                    "pi" "\pi"
                    ;;次幂，脚标
                    "tp" (lambda () (interactive)
                            (yas-expand-snippet "^{$1} $0"))
                    "td" (lambda () (interactive)
                            (yas-expand-snippet "_{$1} $0"))
                    "Sum" (lambda () (interactive)
                            (yas-expand-snippet "\\sum_{$1}^{$2} $0"))
                    "Span" (lambda () (interactive)
                             (yas-expand-snippet "\\Span($1)$0"))
                    ;; add accent snippets
                    :cond #'laas-object-on-left-condition
                    "hsq" (lambda () (interactive) (laas-wrap-previous-object "sqrt"))))


(message "laas 加载成功")
(provide '+laas)
