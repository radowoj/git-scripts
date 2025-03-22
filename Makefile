install: git-from git-prompt git-flush

git-from: /usr/local/bin/git-from
/usr/local/bin/git-from:
	sudo cp ./git-from /usr/local/bin/git-from
	sudo chmod +x /usr/local/bin/git-from

git-flush: /usr/local/bin/git-flush
/usr/local/bin/git-flush:
	sudo cp ./git-flush /usr/local/bin/git-flush
	sudo chmod +x /usr/local/bin/git-flush

git-prompt: ~/.bash_git_branch
~/.bash_git_branch:
	cp ./.bash_git_branch ~/.bash_git_branch
	@grep -qxF 'source ~/.bash_git_branch' ~/.bashrc || echo source ~/.bash_git_branch >> ~/.bashrc


