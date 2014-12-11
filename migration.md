---
layout: post
title:  "Migration"
date:   2014-03-16 11:01:52
---

## 0.6.7

The comments are now displayed inline in the card.
So the binding to show the comments have been removed.
To see comments, simply unfold the card.

## 0.6.6

We can now remove a comment at point (if we are the owner of the comment).
Use <kbd>M-x org-trello/delete-card-comment</kbd>

## 0.5.5

Default bindings have been updated.

| Bindings                 | Action                                                                                                                                       |
|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|
| C-c o C                  | Add comments to the cards at point. To show the cards comments, use <kbd>C-u M-x org-trello/add-card-comments</kbd> (<kbd>C-u C-c o C</kbd>) |
| <strike>C-c o o</strike> | Removed. To show the cards comments, use <kbd>C-u C-c o C</kbd>                                                                              |

Of course, as usual, if you are not happy with this, simply update [your configuration file](https://org-trello.github.io/bindings.html#bindings-override).

## 0.5.3

Lots of work has been done to make org-trello:
- more responsive (almost no more blocking actions).
- faster (trello queries have been improved to let the trello servers do the computations)

Default [interactive commands](http://org-trello.github.io/bindings.html#keybindings) names have been renamed to be explicit and aligned between them.

## 0.5.2

Decision has been taken to remove the intermediary proxy used to bounce requests to trello.
This was introduced to permit asynchronous requests.
This was only partially applied.
So too many lines of code to maintain for small benefits.

This version is synchronous as it was in the beginning (The base code is not the same though).

This is a temporary setback.
We need time to craft a better implementation for asynchronous requests (deferred, async libraries seems interesting enough).

## 0.3.8

org-trello now tries to enforce symmetry, mainly regarding the sync actions.
So by default, an action pushes to trello. Using <kbd>C-u</kbd>, the symmetric action pulls from trello.

| Bindings               | Action                                            |
|------------------------|---------------------------------------------------|
| <kbd>C-c o c</kbd>     | sync the entity TO trello without its structure   |
| <kbd>C-u C-c o c</kbd> | sync the entity FROM trello without its structure |
| <kbd>C-c o C</kbd>     | sync the entity and its structure TO trello       |
| <kbd>C-u C-c o C</kbd> | sync the entity and its structure FROM trello     |
| <kbd>C-c o s</kbd>     | sync the buffer TO trello                         |
| <kbd>C-u C-c o s</kbd> | sync the buffer FROM trello                       |
| <kbd>C-c o a</kbd>     | assign yourself to the card                       |
| <kbd>C-u C-c o a</kbd> | unassign yourself from the card                   |


## 0.3.1

The old checklist/item format has been removed - https://github.com/org-trello/org-trello/issues/105.
Now the org checkbox way is the standard one.

## 0.2.9

For information, from 0.2.9 onward, the property "orgtrello-id" from the checkbox (checklists, items) will be hidden.

*Note*
- Upon activating org-trello minor mode, all existing checkbox will be migrated and should disappear before your eyes.
- Symmetrically, when deactivating org-trello, all checkbox will appear.
- For this, org-trello use [overlays](https://www.gnu.org/software/emacs/manual/html_node/elisp/Overlays.html) (implementation detail which permits to hide buffer region).

If you began to use org-trello, nothing to do.

## 0.2.8

From 0.2.8 onward, the card description can be synchronized too.
Just synchronize as usual.

## 0.2.1 -> 0.2.2

From the 0.2.2 version onward, we can assign people to card.
As a pre-requisite, we need to re-install the board (C-c o I), so that new properties will be installed (users currently assigned to the board we attach to).

This way, you will be able to use the assign (C-c o a) / unassign (C-c o u) yourself to the card.

## 0.1.5 -> 0.1.6

Org-trello now uses more natural ways of dealing with checklists using checkboxes!

cf. [natural org format (from 0.1.6 onwards)](#natural-org-format-from-016-onwards) for more details.

## 0.1.1 -> 0.1.2

- From version 0.1.1, some http requests will be asynchronous.
For this, we use elnode as a proxy server to make requests to trello.
The elnode server is started on the port 9876.
You can always change this port

``` lisp
(setq *ORGTRELLO-PROXY-PORT* 9876)
```
Then <kbd>M-x orgtrello-proxy/reload</kbd>
