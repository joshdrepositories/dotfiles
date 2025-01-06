git-hooks:
	git config core.hooksPath ./git-hooks/
	chmod a+x ./git-hooks/post-merge
