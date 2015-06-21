pr:
	hub pull-request -b org-trello:master

deps:
	nix-env -iA nixpkgs.bundler nixpkgs.ruby_2_1_1

prepare:
	mkdir -p ~/.jekyll/org-trello.github.io/vendor

setup: prepare
	bundle install --path ~/.jekyll/org-trello.github.io/vendor/bundle

pull:
	git fetch --all --prune
	git merge upstream/master
	git push origin master

run-dev:
	bundle exec jekyll serve --watch
