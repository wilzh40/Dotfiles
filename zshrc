# Path to your oh-my-zsh installation.
export TERM="xterm-256color"
export NVM_DIR="/Users/wilsonzhao/.nvm"
export GOPATH=$HOME/.go
# Antigen Configuration
source ~/.dotfiles/antigen/antigen.zsh
# Aliases
alias cmu='ssh -X wyz@unix3.andrew.cmu.edu'
alias cclub='ssh -X wyz@shell.club.cc.cmu.edu'
alias ccs='ssh -X wyz@clam.club.cc.cmu.edu'
alias synct="rsync -rvzuSP --remove-source-files do1:~/Downloads ~/Downloads/Remote"

alias gccs="gcc -g -Wall -Wextra -Werror -Wshadow -std=c99 -pedantic"
alias s="grep -rnIi --color"
alias v="vim"
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle python
antigen bundle z
antigen bundle torrent
antigen bundle common-aliases
antigen bundle osx
antigen bundle web-search
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# Command history reorganized
antigen bundle zsh-users/zsh-history-substring-search
export ZSH=$HOME/.oh-my-zsh

# Load the theme.
 antigen theme af-magic

# Tell antigen that you're done.
antigen apply
export PATH="/usr/local/sbin:$PATH"

# expo/universe
eval "$(direnv hook zsh)"
alias nahcroix="ssh -i ~/nahcroix.pem ec2-user@ec2-54-161-226-173.compute-1.amazonaws.com"


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
