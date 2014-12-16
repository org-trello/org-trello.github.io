pr:
	hub pull-request -b org-trello:master

deps:
	# sudo apt-get install -y bundler
	nix-env -i ruby-bundler

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
