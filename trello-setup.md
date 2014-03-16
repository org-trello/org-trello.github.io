---
layout: post
title:  "Trello Setup"
date:   2014-03-16 11:01:52
---

### Credentials

Install the consumer-key and the read-write token for org-trello to be able to work in your name with your trello boards.
First, ensure that the web browser that emacs is configured to use is started, and you are logged in to Trello in it.

<kbd>C-c o i</kbd> or <kbd>M-x org-trello/install-key-and-token</kbd>

### Sync your org-mode buffer

For each org-mode file, you need to connect your org-mode file with a trello board.

<kbd>C-c o I</kbd> or <kbd>M-x org-trello/install-board-and-lists-ids</kbd>

A simpler way could be to create a board from scratch (if you can).

### Create a board

You can avoid the previous step and create directly a board from your org-mode file.
This will create the list from the keywords you use in your org-mode (cf. [org-todo-keywords](http://orgmode.org/manual/In_002dbuffer-settings.html)).

<kbd>C-c o b</kbd> or <kbd>M-x org-trello/create-board</kbd>
