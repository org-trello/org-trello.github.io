---
layout: post
title:  "Bindings"
date:   2014-03-16 11:01:52
---

This section will describe the key bindings and their associated commands.

## Keybindings

Keybindings        | Interactive commands                                        | Description
-------------------|-------------------------------------------------------------|----------------------------------------------------------------------------------------------
<kbd>C-c o v</kbd> | <kbd>M-x org-trello-version</kbd>                           | Display the current version installed.
<kbd>C-c o i</kbd> | <kbd>M-x org-trello-install-key-and-token</kbd>             | Install the keys and the access-token.
<kbd>C-c o I</kbd> | <kbd>M-x org-trello-install-board-metadata</kbd>            | Select the board and attach the todo, doing and done list.
<kbd>C-c o u</kbd> | <kbd>M-x org-trello-update-board-metadata</kbd>             | Update the buffer's trello board metadata.
<kbd>C-c o b</kbd> | <kbd>M-x org-trello-create-board-and-install-metadata</kbd> | Create interactively a board and attach the newly created trello board with the current org file.
<kbd>C-c o d</kbd> | <kbd>M-x org-trello-check-setup</kbd>                       | Check that the setup is ok. If everything is ok, will simply display 'Setup ok!'.
<kbd>C-c o D</kbd> | <kbd>M-x org-trello-delete-setup</kbd>                      | Clean up the org buffer from all org-trello informations.
<kbd>C-c o c</kbd> | <kbd>M-x org-trello-sync-card</kbd>                         | Create/Update a complete card.
<kbd>C-c o s</kbd> | <kbd>M-x org-trello-sync-buffer</kbd>                       | Synchronize the org-mode file to the trello board (org-mode -> trello). With prefix C-u, sync-from-trello (org-mode <- trello).
<kbd>C-c $</kbd>   | <kbd>M-x org-trello-archive-card</kbd>                      | Archive current card at point. This is the standard org binding.
<kbd>C-c o A</kbd> | <kbd>M-x org-trello-archive-cards</kbd>                     | Archive all DONE cards.
<kbd>C-c o g</kbd> | <kbd>M-x org-trello-abort-sync</kbd>                        | Abort synchronization activities.
<kbd>C-c o k</kbd> | <kbd>M-x org-trello-kill-entity</kbd>                       | Kill the entity (and its arborescence tree) from the trello board and the org buffer.
<kbd>C-c o K</kbd> | <kbd>M-x org-trello-kill-cards</kbd>                        | Kill all the entities (and their arborescence tree) from the trello board and the org buffer.
<kbd>C-c o a</kbd> | <kbd>M-x org-trello-assign-me</kbd>                         | Assign oneself to the card. With C-u modifier, unassign oneself from the card.
<kbd>C-c o C</kbd> | <kbd>M-x org-trello-add-card-comments</kbd>                 | Add a comment to the card. With C-u modifier, remove the current card's comment.
                   | <kbd>M-x org-trello-delete-card-comment</kbd>               | Delete card comment at point.
<kbd>C-c o l</kbd> | <kbd>M-x org-trello-show-board-labels</kbd>                 | Display the board's labels in a pop-up buffer.
<kbd>C-c o j</kbd> | <kbd>M-x org-trello-jump-to-trello-card</kbd>               | Jump to card in browser.
<kbd>C-c o J</kbd> | <kbd>M-x org-trello-jump-to-trello-board</kbd>              | Open the browser to your current trello board.
<kbd>C-c o h</kbd> | <kbd>M-x org-trello-help-describing-bindings</kbd>          | This help message.

*Note:*

- org-trello tries to enforce symmetry, mainly regarding the sync actions.
So by default, an action pushes to trello. Using <kbd>C-u</kbd>, the symmetric actions pulls from trello.
- An entity in org-trello is either a card, checklist or an item.

## Bindings override

You can, as usual [override those proposed default bindings](http://ergoemacs.org/emacs/reclaim_keybindings.html).

For example:

```lisp
(require 'org-trello)

(add-hook 'org-trello-mode-hook
  (lambda ()
    (define-key org-trello-mode-map (kbd "C-c x v") 'org-trello-version)
    (define-key org-trello-mode-map (kbd "C-c x i") 'org-trello-install-key-and-token)
    (define-key org-trello-mode-map (kbd "C-c x I") 'org-trello-install-board-metadata)
    (define-key org-trello-mode-map (kbd "C-c x c") 'org-trello-sync-card)
    (define-key org-trello-mode-map (kbd "C-c x s") 'org-trello-sync-buffer)
    (define-key org-trello-mode-map (kbd "C-c x a") 'org-trello-assign-me)
    (define-key org-trello-mode-map (kbd "C-c x d") 'org-trello-check-setup)
    (define-key org-trello-mode-map (kbd "C-c x D") 'org-trello-delete-setup)
    (define-key org-trello-mode-map (kbd "C-c x b") 'org-trello-create-board-and-install-metadata)
    (define-key org-trello-mode-map (kbd "C-c x k") 'org-trello-kill-entity)
    (define-key org-trello-mode-map (kbd "C-c x K") 'org-trello-kill-cards)
    (define-key org-trello-mode-map (kbd "C-c x a") 'org-trello-archive-card)
    (define-key org-trello-mode-map (kbd "C-c x A") 'org-trello-archive-cards)
    (define-key org-trello-mode-map (kbd "C-c x j") 'org-trello-jump-to-trello-card)
    (define-key org-trello-mode-map (kbd "C-c x J") 'org-trello-jump-to-trello-board)
    (define-key org-trello-mode-map (kbd "C-c x C") 'org-trello-add-card-comments)
    (define-key org-trello-mode-map (kbd "C-c x o") 'org-trello-show-card-comments)
    (define-key org-trello-mode-map (kbd "C-c x l") 'org-trello-show-card-labels)
    (define-key org-trello-mode-map (kbd "C-c x u") 'org-trello-update-board-metadata)
    (define-key org-trello-mode-map (kbd "C-c x h") 'org-trello-help-describing-bindings)))
```

*Note* This will not update the help message with your current redefinition nor remove default bindings (you will need to do the cleanup yourself).

## Prefix binding override

You can also simply change the default prefix key <kbd>C-c o</kbd> and let org-trello do the rest.

For this, you can customize the variable *ORGTRELLO/MODE-PREFIX-KEYBINDING*:

```lisp
(require 'org-trello)

(custom-set-variables '(*ORGTRELLO/MODE-PREFIX-KEYBINDING* "<prefix-key>"))
```

For example, installing using the <kbd>C-c x</kbd> as prefix key:

```lisp
(require 'org-trello)
(custom-set-variables '(*ORGTRELLO/MODE-PREFIX-KEYBINDING* "C-c x"))
```

*Note* If org-trello was already running, you will need to relaunch the mode (<kbd>M-x org-trello-mode</kbd> twice).

For example, here is my [startup file](https://github.com/ardumont/orgmode-pack/blob/master/orgmode-pack.el#L57).
