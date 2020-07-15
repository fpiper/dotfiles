.PHONY: merge tangle

merge:
	tangle/merge.sh

tangle:
	tangle/tangle.sh

link:
	tangle/link.sh

fetch:
	git fetch

pull:
	tangle/pull.sh
