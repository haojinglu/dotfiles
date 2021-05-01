# init
autoload -Uz compinit
compinit

# go
export GO111MODULE=on
export GOPROXY="https://goproxy.cn,direct"

# prompt
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# color
export CLICOLOR=1

# homebrew
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.cloud.tencent.com/homebrew-bottles
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_EMOJI=1

# kubernetes
alias kc='kubectl'
alias kd='kubectl describe'
source /usr/local/share/zsh/site-functions/_kubectl

# zsh plugins
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# proxy
unproxy() {
	unset https_proxy
	unset http_proxy
	unset all_proxy
}

# aliases
alias g='git'

alias d='docker'

alias tt='tmux ls'
alias ta='tmux a -t'

alias l='ls -F'
alias la='ls -aF'
alias ll='ls -lahF'

alias grep='grep --color'

alias mkdir='mkdir -p'

alias ..='cd ..'
alias ....='cd ../..'

alias p='cd ~/p'

alias vz='vim ~/.zshrc'
alias sz='source ~/.zshrc'
alias vv='vim ~/.vimrc'

# java
function setJDK11() { export JAVA_HOME=$(/usr/libexec/java_home -v11) }
function setJDK8() { export JAVA_HOME=$(/usr/libexec/java_home -v8) }

# path
export PATH="/usr/local/sbin:$PATH"

