---
layout: post
title:  "Trello Setup"
date:   2014-03-16 11:01:52
---

### Credentials

Install the consumer-key and the read-write token for org-trello to be able to work in your name with your trello boards.

<kbd>C-c o i</kbd> or <kbd>M-x org-trello/install-key-and-token</kbd>

-

*Note*
First, ensure that the web browser that emacs is configured to use is started, and you are logged in to Trello in it.
This will open your browser to retrieve the needed information, **consumer-key** then the **access-token**, and wait for your input in emacs.

-

*Remark:* This only needs to be done once, until you revoke the token.

### Connect org-mode buffer to board

For each org-mode file, you need to connect your org-mode file with a trello board.

<kbd>C-c o I</kbd> or <kbd>M-x org-trello/install-board-and-lists-ids</kbd>

-

*Note*
This will present you with a list of your actual boards. Select the one you want and hit enter.
This will edit your org-mode file to add the properties needed.

-

*Remarks:*
This needs to be done once for each org-mode file you want to sync with a trello board.

### Create a board

You can avoid the previous step and create directly a board from your org-mode file.

<kbd>C-c o b</kbd> or <kbd>M-x org-trello/create-board</kbd>

-

*Note*
This will create the list from the keywords you use in your org-mode (cf. [org-todo-keywords](http://orgmode.org/manual/In_002dbuffer-settings.html)).

### Migrations

[migration guide](./migration.html)
