---
layout: post
title:  "Installation"
date:   2014-03-16 11:01:52
---

The Marmalade installation is the one recommended.

### Install

Org-trello is a minor mode for org-mode to sync.
Add this somewhere in your load file (`~/.emacs` or `~/.emacs.d/init.el`).

``` lisp
(require 'org-trello)
;; to have org-trello activated for all org file, uncomment this
;; (add-hook 'org-mode-hook 'org-trello-mode)
;; otherwise, M-x org-trello-mode
```

### Marmalade - Stable version

Add this to your emacs's init file (~/.emacs, ~/.emacs.d/init.el, or *scratch*, or whatnot...)

``` lisp
(require 'package)

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)
```

Then hit <kbd>M-x eval-buffer</kbd> to evaluate the buffer's contents.

### Melpa - ~snapshot

Add this to your emacs's init file (~/.emacs, ~/.emacs.d/init.el, or *scratch*, or whatnot...)

``` lisp
(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)
```

Then hit <kbd>M-x eval-buffer</kbd> to evaluate the buffer's contents.

*Note*
Melpa and Marmalade repositories package the same org-trello code.
The divergence comes from the org-trello dependencies which are not the same versions.
The most stable may be Marmalade (Melpa build is automatic and completely depends on how the developer define its recipes).

### Github

Download org-trello from GitHub

```sh
git clone http://github.com/org-trello/org-trello.git
```

Add the org-trello directory to your load path and then add

``` lisp
(add-to-list 'load-path "/path/to/org-trello/")
(require 'org-trello)
```
