.PHONY: merge install link tangle fetch pull

merge:
	tangle/merge.sh

install: tangle link

tangle: tangle/tangle.sh
	tangle/tangle.sh

link:
	tangle/link.sh

fetch:
	git fetch

pull:
	tangle/pull.sh

tangle/tangle.sh: README.org
	emacs --batch --eval "(and (require 'org) (org-babel-tangle-file \"README.org\"))"
