;;  __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |

(require 'package)
(package-initialize)
;;;set package repository to chinese mirrors
(setq package-archives '(("gnu"   . "https://elpa.emacs-china.org/gnu/")
                         ("melpa" . "https://elpa.emacs-china.org/melpa/")))
;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(
;;;;;;;;add package name you want to install
		   company
		   company-jedi
		   sr-speedbar
	       monokai-theme
		   window-numbering
		   swiper
	       counsel
		   youdao-dictionary
		   imenu-anywhere
	       ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
    (loop for pkg in my/packages
	  when (not (package-installed-p pkg)) do (return nil)
	  finally (return t)))

(unless (my/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg my/packages)
      (when (not (package-installed-p pkg))
		(package-install pkg))))

(provide 'init-package)
