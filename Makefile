pr:
	hub pull-request -b org-trello:master

pull:
	git fetch --all --prune
	git merge upstream/master
	git push origin master

run-dev:
	bundle exec jekyll serve --watch

install:
	bundle install
