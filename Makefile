dst_readme := tangle.sh merge.sh pull.sh link.sh dots.sh

.PHONY: merge install link tangle fetch pull clean

merge: tangle/merge.sh
	tangle/merge.sh

install: tangle link

tangle: tangle/tangle.sh
	tangle/tangle.sh

clean:
	rm hash/*

link: tangle/link.sh
	tangle/link.sh

fetch:
	git fetch

pull: tangle/pull.sh
	tangle/pull.sh

.SILENT: $(addprefix tangle/,$(dst_readme))
$(addprefix tangle/,$(dst_readme)) &: README.org
	emacs --batch --eval "(and (require 'org) (org-babel-tangle-file \"README.org\"))" &> /dev/null
