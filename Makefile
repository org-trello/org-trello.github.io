pr:
	hub pull-request -b org-trello:master

deps:
	@echo 'Please run `sudo apt-get install bundler nodejs` or equivalent'

pull:
	git fetch --all --prune
	git merge upstream/master
	git push origin master

update:
	bundle update; bundle lock; bundix

run-dev:
	bundle exec jekyll serve --watch
