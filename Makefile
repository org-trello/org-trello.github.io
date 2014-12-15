pr:
	hub pull-request -b org-trello:master

deps:
	# sudo apt-get install -y bundler
	nix-env -i ruby-bundler

setup:
	bundle install --path vendor/bundle

pull:
	git fetch --all --prune
	git merge upstream/master
	git push origin master

run-dev:
	bundle exec jekyll serve --watch
