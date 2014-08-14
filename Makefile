pr:
	hub pull-request -b org-trello:master

deps:
	sudo apt-get install -y bundler

pull:
	git fetch --all --prune
	git merge upstream/master
	git push origin master

run-dev:
	bundle exec jekyll serve --watch

install: deps
	bundle install
