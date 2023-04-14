;; 内置的doom模块配置

;; python -jupyter
(setq +python-jupyter-repl-args '("--simple-prompt"))

;;latex bib 位置
(setq reftex-default-bibliography "~/Documents/Bibfiles/all-in-one.bib")
;; 如果想要设置专门的pdf查看器，可以打开如下的变量定义覆盖原有的列表
;; (setq +latex-viewers '(zathura))
;; 如果要用cdlatex覆盖yasnippets，则启用如下设施覆盖tab
(map! :map cdlatex-mode-map
      :i "TAB" #'cdlatex-tab)
;;
;; markdown 编译器
;; 如果你想doom预设值(marked，pandoc，Markdown，multimarkdown)以外的编译器那么使用如下hook将其添加至编译器列表
;; Add a new one
;; (add-hook '+markdown-compile-functions #'my-compile-function)
;; Or remove an existing one
;; (remove-hook '+markdown-compile-functions #'+markdown-compile-markdown)

;; org相关
(setq org-directory "~/Documents/Org")
(setq org-noter-notes-search-path '("~/Documents/notes"))


(message "config 配置加载完成")
(provide 'binconfig)
