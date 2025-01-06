init: git-hooks

git-hooks:
	git config core.hooksPath ./git-hooks/
	chmod +x ./git-hooks/post-merge

read-psa:
	printf "\e[0;31m" && cat dev_psa.txt
