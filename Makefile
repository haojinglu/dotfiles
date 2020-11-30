
all: zsh vim git

.PHONY: git
git: 
	ln -sfn $(CURDIR)/git/gitconfig $(HOME)/.gitconfig

.PHONY: zsh
zsh:
	ln -sfn $(CURDIR)/zsh/zshrc $(HOME)/.zshrc