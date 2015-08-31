---
layout: post
title:  "Custom"
date:   2015-08-30 09:30:20
---

This section will describe how to customize some default org-trello behavior.

### Lisp

Here is an example of how to setup all actual org-trello user-customized
variables:

```lisp
(custom-set-variables
   '(orgtrello-log-level orgtrello-log-debug) ;; log level to debug
   '(org-trello-current-prefix-keybinding "C-c x") ;; C-c x as the default prefix
   '(orgtrello-setup-use-position-in-checksum-computation nil) ;; checksum without position
   '(org-trello-files '("~/docs/some-doc.trello"
                        "~/docs/some-other-doc.org"))) ;; automatic org-trello on files
```

*Note*:
For the current session, place yourself after the s-exp and evaluate it
<kbd>M-x eval-last-sexp</kbd>

To make it persistent over reboot, place this snippet inside your emacs' setup
(~/.emacs, ~/.emacs.d/init.el, etc...).


### Emacs' UI

Emacs owns a powerful *customize group* command. To use it:

<kbd>M-x customize-group RET org-trello RET</kbd>

Here is a preview of my own state:

    Org-trello group:  Org-trello customisation group.
          [ State ]: something in this group has been set and saved.

    Hide Org Trello Current Prefix Keybinding: C-c o
       [ State ]: SAVED and set.
       The default prefix keybinding to execute org-trello commands.

    Hide org-trello-files: nil
       [ State ]: STANDARD. (mismatch)
       Org-trello files that needs org-trello activated when opened.

    Hide Org Trello Mode Hook:
    [INS]
       [ State ]: STANDARD.
       Define org-trello hook for user to extend mode with their own behavior.

    Hide Orgtrello Log Level: 3
       [ State ]: SAVED and set.
       Set log level. More

    Hide Orgtrello Setup Use Position In Checksum Computation: nil
       [ State ]: STANDARD.
       Let the user decide if (s)he wants to use the position in the checksum. More

You can directly edit from the ui.
