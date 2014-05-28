---
layout: post
title:  "Install"
date:   2014-03-16 11:01:52
---

To install **org-trello** in your emacs, you need a few steps.

## Package

If not already configured, you need to prepare emacs to work with marmalade or melpa.
For this, you need to install a snippet of code in your emacs configuration file.

### Marmalade (recommended)

``` lisp
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages"))
(package-initialize)
```

Then hit <kbd>M-x eval-buffer</kbd> to evaluate the buffer's contents.

### Melpa-stable

``` lisp
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))
(package-initialize)
```

Then hit <kbd>M-x eval-buffer</kbd> to evaluate the buffer's contents.

### Melpa (~snapshot)

``` lisp
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages"))
(package-initialize)
```

Then hit <kbd>M-x eval-buffer</kbd> to evaluate the buffer's contents.

*Note*
Melpa and Marmalade repositories provide the same org-trello code.
The divergence comes from the org-trello dependencies which are not the same versions.

## Install

Use standard emacs installation:

<kbd>M-x package-install RET org-trello RET</kbd>

### Load org-trello

Add this in your emacs configuration file **~/.emacs** or **~/.emacs.d/init.el**.

``` lisp
(require 'org-trello)
;; to have org-trello activated for each org file, uncomment this
;; (add-hook 'org-mode-hook 'org-trello-mode)
;; otherwise, M-x org-trello-mode
```

### Alternative

#### Tarball

Retrieve the tarball from [github](https://github.com/org-trello/org-trello/releases) then:

```sh
wget https://github.com/org-trello/org-trello/releases/download/$VERSION/org-trello-$VERSION.tar -o /path/to/org-trello-$VERSION.tar
```

<kbd>M-x package-install-file RET /path/to/org-trello-$VERSION.tar RET</kbd>

#### Git + Cask (dev)

Clone org-trello from GitHub:

```sh
git clone http://github.com/org-trello/org-trello.git
```

You can use [Cask](https://cask.github.io/) to make a local tarball and install using Emacs:

```sh
make install package
```

*Note* `install` will download Cask and `package` will create an org-trello tarball archive containing org-trello.

Now install the built `org-trello-$VERSION.tar` using Emacs.

<kbd>M-x package-install-file RET /path/to/org-trello-$VERSION.tar RET</kbd>
