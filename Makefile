install: git-from git-create git-prompt

git-from: /usr/local/bin/git-from
/usr/local/bin/git-from:
	sudo cp ./git-from /usr/local/bin/git-from
	sudo chmod +x /usr/local/bin/git-from

git-create: /usr/local/bin/git-create
/usr/local/bin/git-create:
	sudo cp ./git-create /usr/local/bin/git-create
	sudo chmod +x /usr/local/bin/git-create

git-prompt: ~/.bash_git_branch
~/.bash_git_branch:
	cp ./.bash_git_branch ~/.bash_git_branch
	echo source ~/.bash_git_branch >> ~/.bashrc


