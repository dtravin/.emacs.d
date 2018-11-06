(prelude-require-package 'desktop)
(prelude-require-package 'whitespace)
(prelude-require-package 'ag)
(prelude-require-package 'python-test)
(prelude-require-package 'git-link)

(setq desktop-path (list "~/emacs-desktop"))
(desktop-save-mode 1)


(prelude-require-package 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-smart-open t)
(setq-default neo-show-hidden-files t)

;;(setq whitespace-line-column 120)

;;turn off aggressive auto save
(setq prelude-auto-save nil)
(setq
 backup-by-copying t      ;; don't clobber symlinks
 backup-directory-alist
 '(("." . "/tmp/emacs-backups"))    ;; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)

(setq prelude-flyspell nil)
;;(setq prelude-whitespace nil)

(setq whitespace-global-modes '(not go-mode))
