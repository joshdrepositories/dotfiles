init: git-hooks

git-hooks:
	git config core.hooksPath ./git-hooks/
	chmod +x ./git-hooks/post-merge
