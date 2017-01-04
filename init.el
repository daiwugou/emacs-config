;;  __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |

(package-initialize)

;;;add directory "layer"in load path, make sure all configs can be fetched
;;;ATTENTION:after regular setting you have to add (provide 'filename(without .el)) at last
;;;this is necessary, or you could not require it
(add-to-list 'load-path "~/.emacs.d/configs/")

;;;;;;;;;;;;init-package.el settings as follow
;;;(1)chinese mirrors package repository,please pay attention "http" and "https"
;;;(2)package list you want to install, name it and will be installed automatically
;;;(3)installed packages: company company-jedi window-numbering monokai-theme sr-speedbar
(require 'init-package)

;;;;;;;;;;;init-ui.el settings as follow
;;;(1)disable startup message, tool bar and scroll bar
;;;(2)set title style and some others
;;;(3)use monokai theme as my color scheme
;;;(4)set english and chinese font, after setting chinese font it is smooth when dealing with hanzi
(require 'init-ui)

;;;;;;;;;;;init-company.el settings as follow
;;;(1)toggle company-mode in selected(not be excluded) modes
;;;(2)add company-jedi as one of company-backends and add it to python mode
(require 'init-company)

;;;;;;;;;;init-srspeedbar.el settings as follow
;;;set attributes of sr-speedbar and map keybind to toggle it, f3 as default see init-binding.el
(require 'init-srspeedbar)

;;;;;;;;;init-binding.el settings as follow
;;;f2 to show recent opened files
;;;f3 to toggle sr-speedbar
;;;(require 'init-binding)

;;;;;;;;;;init-org.el settings as follow
;;;;contains all configs of org mode
(require 'init-org)

;;;;;;;;;;init-swiper.el settings as follow
;;;;swiper is better than default search and counsel can list commands when you
;;;;type M-x, now i do not need active ido-mode any more
(require 'init-swiper)

;;;;;;;;;init-basic.el settings as follow
;;;all basic global settings are here
(require 'init-basic)
