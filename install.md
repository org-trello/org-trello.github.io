---
layout: post
title:  "Install"
date:   2014-03-16 11:01:52
---

To install **org-trello** in your emacs, you need a few steps.

## Package

If not already configured, you need to prepare emacs to work with [melpa](http://melpa.milkbox.net/#/getting-started) or [melpa-stable](http://melpa-stable.milkbox.net/#/getting-started).
For this, you need to install a snippet of code in your emacs configuration file.

*Note*
org-trello's [Marmalade package](http://marmalade-repo.org/packages/org-trello) is no longer maintained. Use [melpa-stable package](http://melpa-stable.milkbox.net/#/org-trello) instead.

### Melpa

``` lisp
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages") t)
(package-initialize)
```

Then hit <kbd>M-x eval-buffer</kbd> to evaluate the buffer's contents.

### Melpa-stable

``` lisp
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages") t)
(package-initialize)
```

Then hit <kbd>M-x eval-buffer</kbd> to evaluate the buffer's contents.

## Install

Use standard emacs installation:

<kbd>M-x package-install RET org-trello RET</kbd>

### Load org-trello

Add this in your emacs configuration file **~/.emacs** or **~/.emacs.d/init.el**.

``` lisp
(require 'org-trello)
```

*Note*
We do not recommend loading org-trello for each org-mode buffer (see https://github.com/org-trello/org-trello/issues/209).
org-trello's an org minor mode with trello abilities (which unfortunately limits org's power).

To activate org-trello only for specific files, there exists a custom variable dedicated to this:

Use this for example to activate `org-trello` when opening `/path/to/file0` and `/path/to/file1`.

``` lisp
(custom-set-variables '(org-trello-files '("/path/to/file0" "/path/to/file1")))
```

### Alternative install

#### Tarball

Retrieve the tarball from [github](https://github.com/org-trello/org-trello/releases) then:

```sh
wget https://github.com/org-trello/org-trello/releases/download/$VERSION/org-trello-$VERSION.tar -o /path/to/org-trello-$VERSION.tar
```

<kbd>M-x package-install-file RET /path/to/org-trello-$VERSION.tar RET</kbd>

#### [el-get](https://github.com/dimitri/el-get)

An el-get recipe has been made for [org-trello](https://github.com/dimitri/el-get/blob/master/recipes/org-trello.rcp).

To install it through el-get:

<kbd>M-x el-get-install RET org-trello RET</kbd>

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
