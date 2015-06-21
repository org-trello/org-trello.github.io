---
layout: post
title:  "Usage"
date:   2014-03-16 11:01:52
---

This section will show:

- the format
- an org-trello sample buffer
- possible use cases
- the potential errors you can encounter

### Format

There are 3 levels (cf. next section sample)

- level 1 - Card
- level 2 - Checklist
- level 3 - Item

### Sample

[Natural org checkboxes](http://orgmode.org/manual/Checkboxes.html).
Thanks to @sw1nn [for showing me this org feature, this is awesome!](https://github.com/org-trello/org-trello/issues/14)

```text
* IN-PROGRESS Joy of FUN(ctional) LANGUAGES
- [-] LISP
  - [X] Emacs-Lisp
  - [X] Common-Lisp
  - [ ] Scheme
  - [X] Clojure
- [X] ML
  - [X] Haskell
  - [X] Ocaml
- [X] Hybrid
  - [X] Scala
- [ ] little more detail, this is level 2, so checklist in trello board
  - [ ] item 3
    - [ ] any entities with level superior to 4 are considered level 3
```

For example, once synced to trello, this looks like:

```text
* IN-PROGRESS Joy of FUN(ctional) LANGUAGES
:PROPERTIES:
:orgtrello-id: 521dc9f3edeabee47600401e
:END:
- [-] LISP :PROPERTIES: {"orgtrello-id":"521dc9f48e95d74636004107"}
  - [X] Emacs-Lisp :PROPERTIES: {"orgtrello-id":"521dc9f7487c2e9b250047a5"}
  - [X] Common-Lisp :PROPERTIES: {"orgtrello-id":"521dc9f7ae27842a36003b26"}
  - [ ] Scheme :PROPERTIES: {"orgtrello-id":"521dc9f834f52df935003b15"}
  - [X] Clojure :PROPERTIES: {"orgtrello-id":"521dc9f9c1b85c905f006b4e"}
- [X] ML :PROPERTIES: {"orgtrello-id":"521dc9f5d49a919614000266"}
  - [X] Haskell :PROPERTIES: {"orgtrello-id":"521dc9fa5699f00b25003bd0"}
  - [X] Ocaml :PROPERTIES: {"orgtrello-id":"521dc9fb7ef4310554003ab3"}
- [X] Hybrid :PROPERTIES: {"orgtrello-id":"521dc9f6238d072770007217"}
  - [X] Scala :PROPERTIES: {"orgtrello-id":"521dc9fc8e95d74636004109"}
  ```

*Note* In org-trello buffer, the :PROPERTIES: for the checklists/items won't be visible for the user.

### Use cases

Steps:

- Card (org-mode heading level 0):

  - Place yourself on the **card-identity** and hit the binding <kbd>C-c o c</kbd>, this will sync the card (create) in the **TODO** column in your trello board.
  - You can edit the label and hit <kbd>C-c o c</kbd> again, this time, this will sync the card again (update) in trello
  - Change the status from TODO to any intermediary status, then hit the binding, this will move the card to the list **DOING** (depending on your todo keywords list).
  - Once done, move the status of the card from anything to DONE, hit the binding, this will move the card to the list **DONE**.

- Checklist (checkbox with indentation at 2 spaces):

  - Place yourself on the checklist **checklist**, hit the binding, this will add **checklist** as a checklist to your card **card-identity**
  - Rename your checklist and hit again the binding to update its label.

- Item (checkbox with indentation at 4 spaces):

  - Place yourself on your item and hit the binding, this will add the item to such checklist.
  - Change the label of the item and hit the binding, this will update its label.
  - Change the status of the item to **DONE** and hit the binding, this will check such item in trello.

#### Card and deadline/due date

You can use [org-mode's deadline](http://orgmode.org/manual/Inserting-deadline_002fschedule.html), this is mapped to trello's due date notion during the synchronize step.

#### Sync entity to trello board

You can sync the entity without its arborescence to trello.

Place yourself on the entity (card or checklist or item) and hit <kbd>C-c o c</kbd>.

When on:

  - a card, this will only sync the card
  - a checklist, this will only sync the checklist
  - an item, will only sync the item

#### Sync entity from trello board

You can sync the entity without its arborescence from trello.

Place yourself on the entity (card or checklist or item) and hit <kbd>C-u C-c o c</kbd>.

#### Creation of a full entity

You can sync the full entity and its arborescence.

Place yourself on the entity (card or checklist or item) and hit <kbd>C-c o C</kbd>.

When on:

  - a card, this will sync the card, then the checklists then any items of each checklist.
  - a checklist, this will sync the checklist then the items.
  - an item, will only sync the item

#### Sync entity with structure from trello board

You can sync the entity and its full structure from trello board.

Place yourself on the entity (card or checklist or item) and hit <kbd>C-u C-c o C</kbd>.

#### Sync org-mode file to trello board

All entities from the org buffer will be created or updated to the trello board.
Hit <kbd>C-c o s</kbd>.

#### Sync org-mode file from trello board

All entities from the org buffer will be synced with the trello board content.
Hit <kbd>C-u C-c o s</kbd>.

This will update any entries that were already present in the org-mode file and create any entries that were not created yet.

#### Remove entity

The current entity and its arborescence will be removed.
Hit <kbd>C-c o k</kbd>.

*Note* This will also remove the entry from the org-mode buffer.

#### Remove entities

Remove all entities from the trello board and the org buffer.
Hit <kbd>C-c o K</kbd>.

#### Cleanup org-trello setup

Remove only org-trello data from the org-mode buffer.
Hit <kbd>C-c o x</kbd>.

*Note* This will also remove header metadata file.

#### Jump to trello card

Jump to the card in the trello board the org buffer is connected to.
Hit <kbd>C-c o j</kbd>.

*Note* This will use your default browser

#### Jump to trello board

Jump to the trello board the org buffer is connected to.
Hit <kbd>C-u C-c o j</kbd>.

*Note* This will use your default browser

#### Add comments

You have the possibility to add comments to.
Hit <kbd>C-c o C</kbd> to add a comment.

### Possible errors

org-trello can display the following possible error messages:

- without setting up the consumer-key and the access-token:

    > - Setup problem - You need to install the consumer-key and the read/write access-token - C-c o i or M-x org-trello-install-board-metadata

- without setting up the org-mode buffer:

    > - Setup problem.
    > Either you did not connect your org-mode buffer with a trello board, to correct this:
    >   * attach to a board through C-c o I or M-x org-trello-install-board-metadata
    >   * or create a board from scratch with C-c o b or M-x org-trello-create-board-and-install-metadata).
    > Either your org-mode's todo keyword list and your trello board lists are not named the same way (which they must).
    > For this, connect to trello and rename your board's list according to your org-mode's todo list.

- If the board's list names are different from your org-mode's keyword list:

    > - Setup problem.
    > Either you did not connect your org-mode buffer with a trello board, to correct this:
    >   * attach to a board through C-c o I or M-x org-trello-install-board-metadata
    >   * or create a board from scratch with C-c o b or M-x org-trello-create-board-and-install-metadata).
    > Either your org-mode's todo keyword list and your trello board lists are not named the same way (which they must).
    > For this, connect to trello and rename your board's list according to your org-mode's todo list.
    > Also, you can specify on your org-mode buffer the todo list you want to work with, for example: #+TODO: TODO DOING | DONE FAIL (hit C-c C-c to refresh the setup)

- no label on the card:

    > Cannot synchronize the card - missing mandatory label. Skip it...

- no label on the checklist:

    > Cannot synchronize the checklist - missing mandatory label. Skip it...

- no label on the item:

    > Cannot synchronize the item - missing mandatory label. Skip it...

- syncing the checklist without syncing the card first:

    > Cannot synchronize the checklist - the card must synchronized first. Skip it...

- syncing the item without syncing the checklist first:

    > Cannot synchronize the item - the checklist must be synchronized first. Skip it...

### Automatic org-trello files in emacs

Add this inside your personal emacs setup file *~/.emacs.d/init.el*.
And now when naming a file with a .trello extension, opening it will have automatically org-trello activated on it.

```lisp
;; org-trello major mode for all .trello files
(add-to-list 'auto-mode-alist '("\\.trello$" . org-mode))

;; add a hook function to check if this is trello file, then activate the org-trello minor mode.
(add-hook 'org-mode-hook
          (lambda ()
            (let ((filename (buffer-file-name (current-buffer))))
              (when (and filename (string= "trello" (file-name-extension filename)))
              (org-trello-mode)))))
```
source: https://github.com/org-trello/org-trello/issues/249
