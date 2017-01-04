;;  __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |

;;;show unknown file
(setq speedbar-show-unknown-files t)
;;;do not use images as icons
(setq speedbar-use-images nil)
;;;set default width
(setq sr-speedbar-default-width 25)
;;;set max width
(setq sr-speedbar-max-width 30)
;;;show on left, set 't' to show on right
(setq sr-speedbar-right-side nil)
;;;f3 to toggle srspeedbar
(global-set-key (kbd "<f3>") 'sr-speedbar-toggle)


(provide 'init-srspeedbar)
