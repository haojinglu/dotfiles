all: zsh vim git

.PHONY: git
git: 
	ln -sfn $(CURDIR)/git/gitconfig $(HOME)/.gitconfig

.PHONY: zsh
zsh:
	ln -sfn $(CURDIR)/zsh/zshrc $(HOME)/.zshrc

.PHONY: alias
alias:
	ln -sfn $(CURDIR)/aliases $(HOME)/.aliases

.PHONY: function
function:
	ln -sfn $(CURDIR)/function $(HOME)/.function

.PHONY: tmux
tmux:
	ln -sfn $(CURDIR)/tmux/tmux.conf $(HOME)/.tmux.conf
