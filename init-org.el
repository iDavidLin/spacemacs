;; cl - Common Lisp Extension
(require 'cl)

(with-eval-after-load 'org (setq org-agenda-files
                                 '("~/Dropbox/org/")))

(setq org-bullets-bullet-list '("◉" "◎" "⚫" "○" "►" "◇"))

(setq org-capture-templates '(("t" "Todo [inbox]" entry
                               (file+headline "~/Dropbox/org/inbox.org" "Tasks")
                               "* TODO %i%?")
                              ("T" "Tickler" entry
                               (file+headline "~/Dropbox/org/tickler.org" "Tickler")
                               "* %i%? \n %U")))
(setq org-todo-keywords
      '((sequence "TODO(t!)" "PROCESSING(p!)" "BLOCKED(b!)" "|" "DONE(d!)")))

(setq org-refile-targets '(("~/Dropbox/org/todo.org" :maxlevel . 3)
                           ("~/Dropbox/org/someday.org" :level . 1)
                           ("~/Dropbox/org/tickler.org" :maxlevel . 2)))


(provide 'init-org)
