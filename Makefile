pr:
	hub pull-request -b org-trello:master

deps:
	nix-env -i bundler

prepare:
	mkdir -p ~/.jekyll/ardumont.github.io/vendor

setup: prepare
	bundle install --path ~/.jekyll/ardumont.github.io/vendor/bundle

pull:
	git fetch --all --prune
	git merge upstream/master
	git push origin master

run-dev:
	bundle exec jekyll serve --watch
