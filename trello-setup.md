---
layout: post
title:  "Trello Setup"
date:   2014-03-16 11:01:52
---

## Credentials

Install the *org-trello-consumer-key* and the read-write *org-trello-access-token*
for org-trello to be able to work in your name with your trello boards.

<kbd>C-c o i</kbd> or <kbd>M-x org-trello-install-key-and-token</kbd>

*Note*
First, ensure that the web browser that emacs is configured to use is started,
and that you are logged in to Trello in it.

This command will:

- ask for an account name (no verification is made about it). User can simply
input the login account.

- open your browser for you to select and copy your *org-trello-consumer-key*
(Developer API Keys / key entry) and paste it inside emacs' minibuffer
(hit <kbd>RET</kbd> when done).

<img src="./images/trello-credentials/retrieve-consumer-key.png" />

- open a second tab to ask you to authorize org-trello to work in your name
on your account

<img src="./images/trello-credentials/authorize-org-trello.png" />

- If you are not ok with this, hit *Deny*.
It's ok, you just will not be able to use org-trello.

- Otherwise, hit *Allow*, this will then present you a form with the read/write
*org-trello-access-token*, select and copy it then paste it inside emacs'
minibuffer and hit <kbd>RET</kbd> (enter/C-m).

*Remark:* This only needs to be done once, until you revoke the token.

## Connect org-mode buffer to board

For each org-mode file, you need to connect your org-mode file with a trello
board.

<kbd>C-c o I</kbd> or <kbd>M-x org-trello-install-board-metadata</kbd>

This will:

- ask you for the accounts you want to use (if you have multiple ones,
otherwise, select the only one and pass to the next step silently)

- present you with a list of boards for the selected account.
Select the one you want and hit enter.

- edit your org-mode file to add the properties needed.

*Remarks:*
This needs to be done once for each org-mode file you want to sync with a trello board.

## Create a board

You can avoid the previous step and create directly a board from your org-mode file.

<kbd>C-c o b</kbd> or <kbd>M-x org-trello-create-board-and-install-metadata</kbd>

This will:

- ask you for the accounts you want to use (if you have multiple ones,
otherwise, select the only one and pass to the next step silently)

- create the list from the keywords configured in your org-mode
(cf. [org-todo-keywords](http://orgmode.org/manual/In_002dbuffer-settings.html))

## Migrations

[migration guide](./migration.html)
