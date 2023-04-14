
;; EAF 配置
(add-to-list 'load-path "/home/ygz/.emacs.d/site-lisp/emacs-application-framework/")


(require 'eaf)

(require 'eaf-browser)
(require 'eaf-pdf-viewer)
(require 'eaf-music-player)
(require 'eaf-video-player)
(require 'eaf-image-viewer)
(require 'eaf-rss-reader)
(require 'eaf-terminal)
(require 'eaf-markdown-previewer)
(require 'eaf-org-previewer)
(require 'eaf-git)
(require 'eaf-file-manager)
(require 'eaf-mindmap)
(require 'eaf-netease-cloud-music)
(require 'eaf-system-monitor)
(require 'eaf-jupyter)
(require 'eaf-2048)
(require 'eaf-markmap)

 (defun eaf-org-open-file (file &optional link)
  "An wrapper function on `eaf-open'."
  (eaf-open file))
;;请使用 M-x eaf-org-export-to-pdf-and-open
;; use `emacs-application-framework' to open PDF file: link
 (add-to-list 'org-file-apps '("\\.pdf\\'" . eaf-org-open-file))


 (require 'eaf-evil)
;; eaf会把C-SPC当成evil的leader-key，在你加载'eaf-evil之后使用eaf时就需要在eaf中键入C-SPC使用evil leader下的键。
;; 我们只需要将这个键设置为 SPC或你自己的evil-leader-key即可
 (setq eaf-evil-leader-key "SPC")
;; 双向搜索没设置成功
 ;; (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex --synctex=1%(mode)%' %t" TeX-run-TeX nil t))
 ;; (add-to-list 'TeX-view-program-list '("eaf" eaf-pdf-synctex-forward-view))
 ;; (add-to-list 'TeX-view-program-selection '(output-pdf "eaf"))
 (setq eaf-enable-debug t)
;; (setq eaf-buffer-background-color "#F0F8FF")

;; EAF预览快捷键
(map! :map eaf-mode-map
      :leader
      :prefix ("e" . "eaf-预览")
      :desc "浏览器" "b" #'eaf-open-browser
      :desc "打开当前buffer预览" "e" #'eaf-open-this-buffer
      :desc "音乐" "m" #'eaf-open-music-player
      :desc "用eaf打开" "o" #'eaf-open
      :desc "终端" "t" #'eaf-open-terminal
      :desc "jupyter" "j" #'eaf-open-jupyter
      :desc "系统监视器" "s" #'eaf-open-system-monitor
      :desc "杀死所有eaf进程" "k" #'eaf-kill-process
      :desc "打开文件管理器" "f" #'eaf-open-file-manager
      :desc "网抑云" "w" #'eaf-open-netease-cloud-music
      )


(provide '+eaf)
