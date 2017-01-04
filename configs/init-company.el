;;  __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |

;;;active company-mode in all major modes
(add-hook 'after-init-hook 'global-company-mode)
;;;disable company in some specific modes
(setq company-global-modes '(not eshell-mode org-mode fundamental-mode shell-mode))
;;;compamy mode delay and length
(setq company-idle-delay t)
(setq company-minimum-prefix-length 1)

;;;add company-jedi as one of company's backends

(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi))
;;;active company-jedi in python mode
(add-hook 'python-mode-hook 'my/python-mode-hook)

(add-hook 'python-mode-hook 'linum-mode)


(provide 'init-company)
