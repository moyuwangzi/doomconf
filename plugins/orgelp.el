;; org-elp

(require 'org-elp)

(use-package org-elp
  :config
  (setq org-elp-split-fraction 0.2)
  (setq org-elp-buffer-name "*公式渲染*")
  (setq org-elp-idle-time 0.5)
)

(map! :map org-elp-mode-map
      :leader
      :prefix ("o")
      :desc "启动/关闭 org-elp" "e" #'org-elp-mode
      )

(message "elp加载成功")
(provide 'orgelp)
