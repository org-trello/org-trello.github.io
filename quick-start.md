---
layout: post
title:  "Quick Start"
date:   2014-04-06 21:12:19
---

Once the [installation](/install.html) and the [setup](/trello-setup.html) are done!

A typical starting point would be to synchronize the trello board to the current buffer.

Hit <kbd>C-u C-c o s</kbd>.

This will trigger the <kbd>C-u M-x org-trello-sync-buffer</kbd> which is in charge of fetching the current board's data and writing it inside the current buffer.

-

From this on, you can use your org buffer as usual.

When you want to update the trello board from the org buffer:

- <kbd>C-c o c</kbd>/<kbd>C-c o C</kbd> to update the card.

- <kbd>C-c o s</kbd> If you want to push all your org buffer's content. This will sync to trello all the entities from your buffer.

When you want to update the org buffer from trello:

- <kbd>C-u C-c o c</kbd> / <kbd>C-u C-c o C</kbd> to update the card from trello

For more details, see the [usage](/usage.html) section.
