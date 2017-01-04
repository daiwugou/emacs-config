;;  __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |



;;do not show start image
(setq inhibit-startup-message -1)
;;do not use tool bar
(tool-bar-mode -1)
;;do not use scroll bar
(scroll-bar-mode -1)
;;do not show menu bar
(menu-bar-mode -1)
;;set title of emacs
(setq frame-title-format "CHINL@%f")
;;use monokai theme
(add-hook 'after-init-hook '(lambda () (load-theme 'monokai t)))

;;;set english font
;;(set-face-attribute
;; 'default nil :font "Consolas 12")
;;;set chinese font
;;(dolist (charset '(kana han symbol cjk-misc bopomofo))
;;  (set-fontset-font (frame-parameter nil 'font)
;;		    charset
;;		    (font-spec :family "Microsoft Yahei" :size 16)))
;;

(provide 'init-ui)
