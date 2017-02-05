---
layout: post
title:  "FAQ"
date:   2017-02-05 11:59:44
---

This is the frequently asked questions section.
This is in no way exhaustive.

You can find other questions by looking up
in [org-trello's issues tracker](https://github.com/org-trello/org-trello/issues/)
if you do not find what you want in this website documentation.

- What's your title `org <$> trello` about?

It means map the org functionalities to the trello world.

For the details, at the time, I was in Haskell learning and it made an
xeverlasting awesome impression. [See fmap's documentation for more detail](http://hackage.haskell.org/package/base-4.9.1.0/docs/Prelude.html#v:fmap)

- Why do i keep getting an error about credentials loading
[even though I did the credentials setup step mentioned](/trello-setup.html#credentials)?

If you keep getting an error similar to credentials loading problem, e.g :

``` text
org-trello - Request ’sync org buffer to trello board’...
org-trello - List of errors:
 - Setup problem - Problem during credentials loading (consumer-key
   and read/write access-token) - C-c o i or M-x org-trello-install-key-and-token
 - Setup problem - You need to install the consumer-key and the
   read/write access-token - C-c o i or M-x org-trello-install-key-and-token
```

Please, make sure the login you used at credential installation step
match your trello login, that is:

- Check `https://trello.com/<user-login>` exists

- `<User-login>` being the same org-trello login (cf. `#+PROPERTY:
  orgtrello-user-me <user-login>` at the org-trello buffer top)
