---
layout: post
title:  "Contributions"
date:   2014-03-16 11:01:52
---

## org-trello

- Pull Requests are more than welcome ([help for developers](https://github.com/org-trello/org-trello/blob/master/README-dev.md))
- Any feedback is welcome too
- open [org-trello github issues](https://github.com/org-trello/org-trello/issues) for new need or issues
- open [org-trello.github.io github issues](https://github.com/org-trello/org-trello.github.io/issues) for documentation improvments

## Issues

### Report

When there is trouble, please, open issues on
[the github tracker](https://github.com/org-trello/org-trello/issues?state=open).

### Automatic (recommended)

Use <kbd>M-x org-trello-bug-report</kbd> (<kbd>C-c o B</kbd>).
This will bootstrap the start of a bug report with the needed information.
You then need to paste this inside the issue newly created.

With <kbd>C-u</kbd> modifier, this will do the same but also open an issue in
org-trello's github tracker.

In any case, please:

- do state the obvious (it may not be for us)
- use github's [excellent markdown format](https://help.github.com/articles/github-flavored-markdown#syntax-highlighting) to ease readings

If the issue is relative to org-trello's:

- functionality: provide an extracted sample of the *\*Message** buffer's content with *orgtrello-log-trace* enabled.
- installation: provide emacs' *\*Compile log** buffer content

*Remark*

We answer to issues/questions alright.
Sometimes, we need more information though.
So be prepared to receive some questions if we do not fully understand.
Keep in mind that the more input you provide clearly, concisely and completely, the better and faster we will be able to solve the problem.

### Manual

Or, if the automatic way fails, please, describe the following:

- emacs version
- org-trello version
- the installation choice [melpa](http://melpa.milkbox.net/),
[melpa-stable](http://melpa-stable.milkbox.net/), [marmalade](https://marmalade-repo.org/), [el-get](https://github.com/dimitri/el-get), tarball, git clone, etc...
- your problem with clarity and conciseness

### log verbosity

To have a more verbose output in the *\*Message** buffer, you can add this snippet of code in a *\*scratch** buffer.

```lisp
(custom-set-variables '(orgtrello-log-level orgtrello-log-trace))
```

and evaluate this <kbd>M-x eval-buffer</kbd>.
Now get back to your org-trello buffer and execute again your command with issues.

### scramble data

You can scramble the ids in your extracted buffer sample.
We do not care about your data, we want to be able to reproduce the issue.

## Mailing list

Send an email:

- subscribe: emacs.org.trello [AT] librelist.com
- unsubscribe: emacs.org.trello-unsubscribe [AT] librelist.com

## Credit

Thanks to the various contributors/commiters (the order has no importance):

Contributors                                        | Actions
 ---------------------------------------------------|---------------------------------------------------------------------------------------------------
[@nicolas_roche](https://twitter.com/nicolas_roche) | logo and the multiple suggestions regarding the web design part.
[@nmassyl](https://twitter.com/nmassyl)             | multiple exchanges on design and functionalities.
[@puzan](https://github.com/puzan)                  | org-trello's el-get recipe
[@purcell](https://github.com/purcell)              | various discussions, suggestions regarding packaging on [Melpa](http://melpa.milkbox.net/)
[@nicferrier](https://github.com/nicferrier)        | [marmalade](http://marmalade-repo.org/), [elnode](https://github.com/nicferrier/elnode), [emacs clean install](http://nic.ferrier.me.uk/blog/2012_07/emacs-packages-for-programmers)...
[@dtebbs](https://github.com/dtebbs)                | [PR - fix on the card description](https://github.com/org-trello/org-trello/pull/173)
[@jasom](https://github.com/jasom)                  | [PR - improvments on the trello card's description rendering on trello and org](https://github.com/org-trello/org-trello/pull/175).
free software world                                 | everything :D
... and all the other contributors                  | opened issues and/or pull requests
