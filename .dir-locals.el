;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Variables")

((org-mode . ((eval . (add-hook 'before-save-hook
                                (lambda nil
                                  (fpi/tangle-async))
                                nil t)))))
