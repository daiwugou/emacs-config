;;  __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |

;;do not generate #filename# files
(setq auto-save-default nil)
;;do not generate filename~ files
(setq make-backup-files nil)
;;set tab width as 4
(setq-default tab-width 4)
;;show matched paren
(show-paren-mode t)
;;;keep highy when cursor still in
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcall fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     (funcall fn)))))

;;save history commands
(savehist-mode 1)
;;use c-x/c-c/c-v/c-z as cut/copy/yank/undo
(cua-mode t)
;;highlight current line
(global-hl-line-mode t)
;;show recent opened files, <F2> to display recent files see init-binding.el
(recentf-mode t)
(setq recentf-max-menu-item 10)
;;;f2 to display recent opened files
(global-set-key (kbd "<f2>") 'recentf-open-files)
;;;y-or-n instead type yes-or-no
(fset 'yes-or-no-p 'y-or-n-p)
;;;set default directory, finally works in version 25
;;(setq default-directory "d:\\Code\\")
;;;auto load modified file
(global-auto-revert-mode t)
;;;start full screen
;;(setq initial-frame-alist (quote ((fullscreen . maximized))))
;;;do not have to answer y everytime when copy or delete directory
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
;;;;;do not make new buffer when enter directory
(put 'dired-find-alternate-file 'disabled nil)
;; delay load
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;;;active window-numbering mode, use M-n to choose buffer
(window-numbering-mode t)



(global-set-key (kbd "<f4>") #'imenu-anywhere)

(provide 'init-basic)
