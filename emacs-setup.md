---
layout: post
title:  "Emacs setup"
date:   2014-03-16 11:01:52
---

### Prefix binding override in one shot

If you are not happy with "C-c o" as default prefix, you can now override your default prefix keybinding.
For this, you need to install the following hook specifying the <prefix-key>:

``` lisp
(require 'org-trello)

(add-hook 'org-trello-mode-hook (lambda () (org-trello/install-local-prefix-mode-keybinding! <prefix-key>)))
```

For example, installing using the "C-c x" as prefix key:

``` lisp
(require 'org-trello)

(add-hook 'org-trello-mode-hook (lambda () (org-trello/install-local-prefix-mode-keybinding! "C-c x")))
```

*Note* If org-trello was already running, you will need to relaunch the mode (<kbd>M-x org-trello-mode</kbd> twice).

For example, here is my [startup file](https://github.com/ardumont/orgmode-pack/blob/master/init.el#L3).
