BIN_DIR := $(HOME)/.local/bin

install: $(BIN_DIR)/git-from $(BIN_DIR)/git-flush ~/.bash_git_branch

$(BIN_DIR)/git-from: ./git-from | $(BIN_DIR)
	cp ./git-from $(BIN_DIR)/git-from
	chmod +x $(BIN_DIR)/git-from

$(BIN_DIR)/git-flush: ./git-flush | $(BIN_DIR)
	cp ./git-flush $(BIN_DIR)/git-flush
	chmod +x $(BIN_DIR)/git-flush

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

~/.bash_git_branch: ./.bash_git_branch
	cp ./.bash_git_branch ~/.bash_git_branch
	@grep -qxF 'source ~/.bash_git_branch' ~/.bashrc || echo source ~/.bash_git_branch >> ~/.bashrc
