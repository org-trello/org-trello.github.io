---
layout: post
title:  "Release Notes"
date:   2014-03-16 11:01:52
---

# 0.3.5

- Test multiple emacs version - https://github.com/ardumont/org-trello/issues/52
- Version
- Update documentation note for the package view
- Release note

# 0.3.4

- PR fix typo in readme - https://github.com/ardumont/org-trello/pull/120
- Fix webadmin button to delete running action
- Add version emacs 24.3.50 in documentation
- Improve computation level for checkbox (checklist/items) - https://github.com/ardumont/org-trello/issues/121#issuecomment-37559929
- Improve documentation
- Upgrade version
- Release notes

# 0.3.3

- Issue when installing on melpa reported wrongly on melpa and reported back https://github.com/ardumont/org-trello/issues/117
- Fix typo when-let in -when-let
- Remove org as a dependency, the plugins org- do not seem to declare it + problem in dependency
- Upgrade to dash 2.5.0
- Clarify the possible manipulation to install the package as a file or directly from the multiple repository
- Integration test to install the file with marmalade
- Integration test to install the file with melpa
- Integration test to fully install the package on marmalade
- Integration test to fully install the package on melpa
- Update README-dev.md about those targets
- Decline these tests with multiple emacs versions
- Use these targets on travis (even if the feedback will be way longer, it's better than no feedback)
- Upgrade version
- Ensure org-trello works with emacs 24.4 (how do i install it...)

# 0.3.2

- Use standard remapping to override the org-end-of-line routine - https://www.gnu.org/software/emacs/manual/html_node/elisp/Remapping-Commands.html
- Clean some dead code
- Use standard mode map definition for the org-trello bindings
- Fix description extract - https://github.com/ardumont/org-trello/issues/114
- Version
- Release notes

# 0.3.1.1

- Installation failure - https://github.com/ardumont/org-trello/issues/112
- Version
- Release notes

# 0.3.1

- Backlog
- Version
- Avoid duplication in declaring the org-trello version
- Add the important information about emacs 24.3+ (org-trello is only supported from this version range)
- Clean the code regarding the old checklist/item entities (with stars) - https://github.com/ardumont/org-trello/issues/105
- Sometimes, multiple cards are created more than once. Improve the proxy policy regarding this - Unable to reproduce so do nothing.
- Release notes

# 0.3.0

- Backlog
- Upgrade Version
- org-trello bindings remains present when org-trello is switched off. Fix it.
- Update doc
- Release notes

# 0.2.9.1

- Forgot to ship code
- Update version
- Release notes

# 0.2.9

- Remove org-trello.el at the root of the code (as the package generates this file and the test load without it, no longer needs to be gitted)
- Invisible checkbox identifier - https://github.com/ardumont/org-trello/issues/98
- Fix sync from trello which loses the state of the checkboxes
- Fix tests break since org-trello.el has been destroyed and simplify the testing
- Overload the C-e mapping to go at the end of the line for the org-trello mode
- Update doc
- Release notes

# 0.2.8.2

- Fix yet another error on synchronization from trello.
- Update doc
- Release notes

# 0.2.8.1

- Fix error on synchronization from trello
- Update doc
- Release notes

# 0.2.8

- Backlog
- Synchronize description - https://github.com/ardumont/org-trello/issues/80
- Use --reduce-from from dash instead of cl-reduce to reduce the cl deps
- Version
- Update doc
- Release notes

# 0.2.7

- Backlog
- Create TODO template for the backlog start
- Clean obsolete files (org-trello.org is no longer maintained, TODO-tests.org is no longer used)
- Retry to split into `namespace` files - https://github.com/ardumont/org-trello/issues/93
  - Split into `namespace` files
  - Ensure packaging is generated and ok for marmalade
  - Ensure packaging is generated and ok for melpa - yes, ensure that the root `org-trello.el` is generated before pushing on master.
  - Ensure the tests are still ok
- README-dev - https://github.com/ardumont/org-trello/issues/99
- Rewrite the abstraction around fetched results to unify the `data model` (in and out identical) - https://github.com/ardumont/org-trello/issues/100
- Unify the terms around users-assigned (org-trello) and members (trello)
- Split the last org-trello namespace into 2 (`controller` for the orchestration function call triggered by interactive commands and `org-trello` for the interactive commands)
- Unfold every entries before triggering the sync from trello to avoid problems similar as https://github.com/ardumont/org-trello/issues/53
- Version
- Release notes

# 0.2.6

- Jump to card - https://github.com/ardumont/org-trello/issues/88
- Rewrite convention for the "goto board" action into "jump to board"
- Update README.md
- Version
- Release Note

# 0.2.5

- Backlog updates
- Global properties in upper case - https://github.com/ardumont/org-trello/issues/83
- Hide the global properties - https://github.com/ardumont/org-trello/issues/77
- Use of checkbox convention - https://github.com/ardumont/org-trello/issues/78
- Jumping from emacs to the current trello board - https://github.com/ardumont/org-trello/issues/76
- Simplify the update of the help menu to avoid possible desynchronisation with code
- Update documentation + TOC
- Version
- Release notes

# 0.2.4

- Sprint backlog
- Some refactoring + tests coverage
- Fix sync-from-trello - Merge org card's users assigned list and the trello one
- Fix sync-from-trello - if new entities are referenced but not yet sync'ed on trello, they will disappear from the buffer when sync-from-trello (they should not) - https://github.com/ardumont/org-trello/issues/71
  - Compute the entities without sync'ed properties
  - Write them silly at the end of the computation of the sync'ed data (trello and org merge) to the org buffer
- Upgrade version
- Release notes

# 0.2.3

- Version
- Fix discrepancy between docstring and binding to delete the setup - https://github.com/ardumont/org-trello/issues/74
- Use a prefix binding which does not override the emacs's default user prefix (keep the original for the moment to avoid disturbing people which already use it) - https://github.com/ardumont/org-trello/issues/72
- Update documentation about the possibility to change the default prefix key
- Fix ci-travis build due to change in cask installation command
- Release notes

# 0.2.2

- Version
- Improve abstraction around data from trello (not complete yet)
- Show people assigned to card - https://github.com/ardumont/org-trello/issues/67
  - Compute user properties part from the board's informations
  - Install board setup routine (C-c o I) also install board users
  - Create board routine (C-c o i) should also install user boards (only the current user should then appear)
  - Setuping properties before doing any actions
  - Cleanup routine should also remove user global properties
  - User assigns oneself to the card
  - User unassigns oneself to the card
  - sync-to-trello also assign users
  - sync-to-trello also unassign users
  - sync-from-trello also retrieve user informations and update the org buffer
  - cleanup routine must cleanup card properties regarding user assigned
- Update README about new command
- Update README TOC
- Release notes

# 0.2.1.2

- Version
- Release notes
- Fix typography in naming windows-nt system

# 0.2.1.1

- Version
- Release notes
- Fix error in packaging manipulation

# 0.2.1

- Version
- Improve sync from trello - In case of new item/checklist, the entry will be added at the end of the buffer instead of its rightful place.
- Problem regarding some function on windows system - https://github.com/ardumont/org-trello/issues/62
- Release notes

# 0.2.0

- Version
- Improve cleanup of the org-trello metadata
- Videos about org-trello
  - Webadmin
  - Checkbox
  - Sync from trello
  - Cleanup trello board
  - Cleanup org-trello buffe
- Reference videos to README
- Improve sync to trello
- Release notes

# 0.1.9

- Clean install org-trello
- Ensure sync-from-trello keep the order of the checklists clean
- Version
- Release notes

# 0.1.8

- Simplify Cask file
- webadmin: Improve rendering [2/2]
  - Better display for the delete buttons.
  - Use css for the play/pause entities
- Ensure checks before sync request to the proxy.
- Fix sync full entity (related to map-checkbox) - https://github.com/ardumont/org-trello/issues/53
- Improve the justify policy once and for all (this blinks at the moment!)
- Version
- Fix problem with archive/unarchive file routine
- Fix problem with delete file routine (does not take place)
- Add missing callback for the delete action
- Improve the post-actions
  - Justify once
  - Saving once
  - Unify the saving behaviour with the delete action

# 0.1.7.1

- Fix problem requiring cl-lib - https://github.com/ardumont/org-trello/issues/51
- Fix error on when-let - https://github.com/ardumont/org-trello/issues/54
- Version
- release notes

# 0.1.7

- webadmin: Add an action button on action to stop it
- webadmin: Add an action button to stop every running actions on entities
- URLencode/Protect the data from the query before executing the query - https://github.com/ardumont/org-trello/issues/46
- Some refactoring about:
  - Docstring position (same level as function definition, this way, when toggling sexp, we see the docstring too)
  - Simplification of cond statement
  - Adding some missing tests
  - Simplifying some code function (removing let when not needed)
- Fix the scan problem with level 3 (must have been introduced with the refactoring from number to variable level)
- Remove the marker notion and use the identifier in its place (we already use it as marker)
- Fix the :PROPERTIES: font lock (which is not painted as keyword)
- Improve the justify policy (trim the content before computing the justifying) -> There remains erratic behaviour
- Improve map-checkbox to deal with limit (map over checkbox inferior to current level, at the moment, we scan all checkboxes)
- Version
- Release notes

# 0.1.6

- Use the native org checklist to sync to trello
- Sync entity and arborescence tree
- Sync to trello must sync the native checklist if the flag is activated
- Sync from trello must create native checklists if the flag is activated
- Cleanup routine must cleanup the new checklist.
- Delete entity must remove entity on point
- Upgrade version
- Automate the release to marmalade
- Justify the #PROPERTIES# to the left for a better rendering
- Keywordify the #PROPERTIES#
- Merge the org :PROPERTIES: and the org-trello #PROPERTIES# into one.
- Improve the activation/deactivation of the new way
- Update the readme about the new checkbox mode
- Release notes
- Release

# 0.1.5

- Symmetry in the architecture - the deletion must pass through the consumer too.
- Upgrade version
- webadmin: Improve the rendering of the webadmin page to add headers and action
- webadmin: Add a current scanning entry in the webadmin page
- Defining log level using variable
- Redefine main function to sync an entity (they are badly named).
- Release notes
- Release

# 0.1.4

- Prepare the hierarchy files to avoid problem like https://github.com/ardumont/org-trello/issues/37#issuecomment-23151353
- Adding a version interactive command (it will help for asking people the version they use).
- Upgrade version
- Refactoring - simplify code
- Improve message labels
- Improve failure dealing regarding the sync
- Improve the marker computation
- Remove the label/title notion and use the name notion (same as trello), this will reduce error reasoning.
- Fix the format with missing argument on the callback sync success
- Improve the test regarding the synchro completion of a level
- Order when syncing to trello
- Release notes
- Release

# 0.1.3

- Leverage elnode's webserver capacity to display some basic monitoring about the synchronization
- Install bootstrap and jquery.js directly to avoid the user's manual installation (the first query to static files install bootstrap and jquery now)
- Simple end to end test - simple entity creation
- Improve the logging policy
- Improve the saving policy
- Upgrade version
- Release notes
- Release

# 0.1.2

- Use an intermediary server between org and trello to permit asynchronous actions
- Change org-trello's loading policy + update the readme about it
- Find a way to make the proxy less verbose
- Fix the loss of todo keywords after the synchronization -> no idea what's wrong here
- Improve the attachment board routine to add the missing | keyword (hardcode with DONE for example)
- Improve the clearing of already present heading metadata
- Improve the help message to categorize the bindings
- Improve the starting/stopping of org-trello
- Remove end to end test as this can no longer works with asynchronous
- Update the readme to explain the migration from 0.1.1 to 0.1.2
- Render the sync to trello routine asynchronous
- Render the sync complex entity routine asynchronous
- Render the sync from trello asynchronous
- Fix check setup routine
- Interactive command to cleanup the org-trello data from the current buffer
- Interactive command to delete all entities from the board and the org buffer
- Update version
- Release notes
- Release

# 0.1.1

- Literate org-trello
- Testing the packaging, at the moment, this is done manually (make package & M-x package-install-file)
- Introducing C-c o h at the loading of the buffer when ot is loaded
- Update readme/main page with images on videos
- Replace already present properties regarding boards before injecting new ones.
- Improve the current attach board and list routine to avoid manual setup for the user
- Update version
- Update dependencies lib to more recent version.
- Remove some warnings
- Add some message for the user to warn the user to use UTF-8
- Force utf-8 for the routine of board installation (create aend attach)
- Some more refactoring
- Refactoring: formatting code, install consume-key and access token routine improved, ...
- Refactoring: UTF-8 warning for every routine + Forcing UTF-8 at setup time (create board and attach board routine)
- Refactoring: Adding ^L break line inside the code to delimit the `namespace`
- Refactoring: Improve the callback use by avoiding to specify them
- Refactoring: Restart org-mode after synchronization to avoid losing the user's setup.
- Refactoring: Fix some problems (version, checklist mechanism update, warning on format, create complex entity which sync only the current entity)
- Release notes
- Release

# 0.1.0

- Fix importing of cards with due date - https://github.com/ardumont/org-trello/pull/22
- Migrate carton to card.el (travis-ci builds break because of this)
- Order of creation of list (from keywords) in trello does not match the order of the keyword
- Abstract away the query (:method, :uri, ...) implementation
- Abstract away the implementation of the org-data some more (access of the information from the map are embedded in the function instead of delegating to dedicated function, thus not hiding the implementation)
- Version
- Order when synchronizing from trello does not match trello's order
- Refactor the sync from trello routine function (2 reduce embedded, only one is sufficient)
- Enforce the order of the card accord to the org keywords after dumping the new entries from trello
- Abstract away the return data from the http request
- Update org version to the latest stable
- Release notes

# 0.0.9

- Update videos with the new features in the readme
- Fix bug regarding the saving buffer routine
- Refactoring action code regarding the message to display in the minibuffer (ATM we do not see what is done or not any longer)
- Refactoring the http and http-sync functions
- Improve the delete entity action by forcing the caret to go at the begin of the line of the heading before killing anything.
- Update version
- Release notes

# 0.0.8

- Fix the cl-lib dependency
- Improve the message when an action is done to let the user know when the action is done!
- Better saving buffer policy
- Sync org DEADLINE with trello card due - https://github.com/ardumont/org-trello/issues/17
- Done, Todo on "check lists" - Once the user sets a "check list" to DONE or TODO, then check or uncheck all the tasks it contains. - https://github.com/ardumont/org-trello/issues/16
- A simple and parametrable setup to make the user choose to use the checklist system or not
- Upgrade version
- Release notes
- Release
- Update documentation about deadline, checklist
- Cleanup the debugging functions

# 0.0.7

- Reference missing bindings in documentation
- Upgrade version
- Improve the error message around the setup (the setup message is too generic and must be more detailed)
- Save the buffer after the synchronization is done (after all we write the trello ids in the buffer)
- Release

# 0.0.6.1

- Fix the json-1.3 dependency, sometimes only 1.2 is available
- Update version
- Release

# 0.0.6

- Test that the title/label of the entity is set when syncing to avoid a 400 error
- Before making the request, ensure that everything is ok (checklist needs the card id, items needs the checklist id, etc...)
- Up the demo video in the beginning of the readme
- Improve readme with links to org-mode and trello
- Improve readme's use cases
- Mention the possible errors
- Mention the emacs version
- Update release notes
- Update the version
- Make a release

# 0.0.5

- Synchronizing from the trello board must simply computes and add/remove what's changed [100%]
- Rewrite the release notes in their own file
- Look on how to make a toc in the README.md in github
- Update the release notes
- Release on github, marmalade, melpa

# 0.0.4.1

- Fix the creation board routine regarding the org-mode keywords (dynamic typing hell!)
- Improve documentation regarding the possibilities to setup the org-mode keyword
- Upgrade version to 0.0.4.1
- Release on github, melpa, marmalade

# 0.0.4

- Permit the user to deal with his/her own trello list (based on his/her org-mode keywords - cf. http://orgmode.org/manual/In_002dbuffer-settings.html)
- Deploy on marmalade the stable version (and update the readme about it)
- Rewrite tests using `expectations`
- Simplify some code regarding destructuring for example
- Remove useless code
- Improve documentations and sync the routine check message with the documentation.
- Update documentation
- Release on github, melpa, marmalade

# 0.0.3

- Syncing complex entities
- cleanup useless tests
- Namespace cleanup
- Building package is now able to deal with the right version
- Create a board from org-mode
- Display the name of the board as a property file
- Cleanup the useless controls
- Given a org-mode file, fill in the trello board
- Announce in emacs mailing list
- Filter out the closed boards from the "choose board list"
- filter out level > 4 when syncing.
- Given a trello board, sync into a org-mode file
- cf. [todo/done](./TODO.org) for the remains
- Release on github (and the previous version too)

# 0.0.2

- Technical release fixing technical details
- Fixing the packaging (inlining into org-trello.el)
- Adding ci-travis
- Local packaging to help testing

# 0.0.1

- write only mode at the moment (org-mode pushes to trello, no reading yet)
- simple entity creation (card, checklist, item/task), the request is asynchroneous
- entity deletion (card, checklist, item/task)
- Interactive command to ease the setup of the consumer-key and the access-token
- Interactive command to ease the setup of one org-mode file (which represents one trello board). I assume there exists a 'todo', 'doing', and 'done' list (named that way too)
- Control that the setup file (consumer-key and access-token) are rightly generated (to avoid later problem)
- Control that the properties on the current org-mode file are rightly setuped to access a trello board
- packaging for melpa
