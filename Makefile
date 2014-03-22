pull:
	git fetch --all --prune
	git merge upstream/master
	git push origin master

run-dev:
	bundle exec jekyll serve --watch

install:
	bundle install
