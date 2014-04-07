---
layout: post
title:  "Bindings"
date:   2014-03-16 11:01:52
---

This section will describe the key bindings and their associated commands.

## Keybindings

Keybindings        | Interactive commands                                  | Description
-------------------|-------------------------------------------------------|----------------------------------------------------------------------------------------------
                   | <kbd>M-x org-trello/version</kbd>                     | Display current version
<kbd>C-c o i</kbd> | <kbd>M-x org-trello/install-key-and-token</kbd>       | Install the keys and the access-token
<kbd>C-c o I</kbd> | <kbd>M-x org-trello/install-board-and-lists-ids</kbd> | Connect buffer to board
<kbd>C-c o c</kbd> | <kbd>M-x org-trello/sync-entity</kbd>                 | Sync an entity to trello. With <kbd>C-u</kbd> prefix, sync an entity from trello
<kbd>C-c o C</kbd> | <kbd>M-x org-trello/sync-full-entity</kbd>            | Sync an entity and its structure to trello. With <kbd>C-u</kbd> prefix, sync an entity and its structure from trello
<kbd>C-c o s</kbd> | <kbd>M-x org-trello/sync-buffer</kbd>                 | Sync org file to board. With <kbd>C-u</kbd> prefix, sync org file from trello board
<kbd>C-c o a</kbd> | <kbd>M-x org-trello/assign-me</kbd>                   | Assign yourself to the card. With <kbd>C-u</kbd> prefix, unassign yourself from the card
<kbd>C-c o d</kbd> | <kbd>M-x org-trello/check-setup</kbd>                 | Check that the setup is ok
<kbd>C-c o D</kbd> | <kbd>M-x org-trello/delete-setup</kbd>                | Clean the org buffer from all org-trello information
<kbd>C-c o b</kbd> | <kbd>M-x org-trello/create-board</kbd>                | Create a board and attach the org-mode file to it
<kbd>C-c o k</kbd> | <kbd>M-x org-trello/kill-entity</kbd>                 | Kill the entity from the board/org buffer. With <kbd>C-u</kbd> prefix, kill all entities.
<kbd>C-c o K</kbd> | <kbd>M-x org-trello/kill-all-entities</kbd>           | Kill all entities from the board/org buffer
<kbd>C-c o j</kbd> | <kbd>M-x org-trello/jump-to-card</kbd>                | Jump to current trello card. With <kbd>C-u</kbd> prefix, jump to trello board.
<kbd>C-c o J</kbd> | <kbd>M-x org-trello/jump-to-trello-board</kbd>        | Jump to current trello board
<kbd>C-c o o</kbd> | <kbd>M-x org-trello/show-card-comments</kbd>          | Show the card's comments
<kbd>C-c o l</kbd> | <kbd>M-x org-trello/show-card-labels</kbd>            | Show the card's labels
<kbd>C-c o A</kbd> | <kbd>M-x org-trello/add-card-comments</kbd>           | Add a comment to the card
<kbd>C-c o u</kbd> | <kbd>M-x org-trello/update-board-metadata</kbd>       | Update the org buffer with trello board metadata
<kbd>C-c o h</kbd> | <kbd>M-x org-trello/help-describing-bindings</kbd>    | This help message

*Note:*

- org-trello tries to enforce symmetry, mainly regarding the sync actions.
So by default, an action pushes to trello. Using <kbd>C-u</kbd>, the symmetric actions pulls from trello.
- An entity in org-trello is either a card, checklist or an item.

## Bindings override

You can, as usual [override those proposed default bindings](http://ergoemacs.org/emacs/reclaim_keybindings.html).

For example:

``` lisp
(require 'org-trello)

(add-hook 'org-trello-mode-hook
  (lambda ()
    (define-key org-trello-mode-map (kbd "C-c x v") 'org-trello/version)
    (define-key org-trello-mode-map (kbd "C-c x i") 'org-trello/install-key-and-token)
    (define-key org-trello-mode-map (kbd "C-c x I") 'org-trello/install-board-and-lists-ids)
    (define-key org-trello-mode-map (kbd "C-c x c") 'org-trello/sync-entity)
    (define-key org-trello-mode-map (kbd "C-c x C") 'org-trello/sync-full-entity)
    (define-key org-trello-mode-map (kbd "C-c x s") 'org-trello/sync-buffer)
    (define-key org-trello-mode-map (kbd "C-c x a") 'org-trello/assign-me)
    (define-key org-trello-mode-map (kbd "C-c x d") 'org-trello/check-setup)
    (define-key org-trello-mode-map (kbd "C-c x D") 'org-trello/delete-setup)
    (define-key org-trello-mode-map (kbd "C-c x b") 'org-trello/create-board)
    (define-key org-trello-mode-map (kbd "C-c x k") 'org-trello/kill-entity)
    (define-key org-trello-mode-map (kbd "C-c x K") 'org-trello/kill-all-entities)
    (define-key org-trello-mode-map (kbd "C-c x j") 'org-trello/jump-to-card)
    (define-key org-trello-mode-map (kbd "C-c x J") 'org-trello/jump-to-trello-board)
    (define-key org-trello-mode-map (kbd "C-c x o") 'org-trello/show-card-comments)
    (define-key org-trello-mode-map (kbd "C-c x l") 'org-trello/show-card-labels)
    (define-key org-trello-mode-map (kbd "C-c x A") 'org-trello/add-card-comments)
    (define-key org-trello-mode-map (kbd "C-c x u") 'org-trello/update-board-metadata)
    (define-key org-trello-mode-map (kbd "C-c x h") 'org-trello/help-describing-bindings)))
```

*Note* This will not update the help message with your current redefinition nor remove default bindings (you will need to do the cleanup yourself).

## Prefix binding override

You can also simply change the default prefix key <kbd>C-c o</kbd> and let org-trello do the rest.

For this, you need to install the following hook specifying the <prefix-key>:

``` lisp
(require 'org-trello)

(add-hook
   'org-trello-mode-hook
   (lambda () (org-trello/install-local-prefix-mode-keybinding! <prefix-key>)))
```

For example, installing using the <kbd>C-c x</kbd> as prefix key:

``` lisp
(require 'org-trello)

(add-hook
   'org-trello-mode-hook
   (lambda () (org-trello/install-local-prefix-mode-keybinding! "C-c x")))
```

*Note* If org-trello was already running, you will need to relaunch the mode (<kbd>M-x org-trello-mode</kbd> twice).

For example, here is my [startup file](https://github.com/ardumont/orgmode-pack/blob/master/init.el#L3).
