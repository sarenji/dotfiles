# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export PATH="~/bin:/usr/local/bin:$PATH"
. ~/.nvm/nvm.sh

# for postgresql one-click installer
export PATH="$PATH:/Library/PostgreSQL/9.1/bin"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

alias g="git"
alias gp="git push"
alias gpp="git pull --rebase origin master && git push origin master"
alias gppp="git pull --rebase origin master && git push origin master && git push production master"
alias gb="git branch"
alias gam="git commit -am"
alias gci="git commit"
alias gm="git commit -m"
alias gco="git checkout"
alias ga="git add"
alias gs="git status"
alias gd="git diff"
alias gap="git add -p"
alias gcach="git commit --amend -C HEAD"
alias gcaach="git commit -a --amend -C HEAD"
alias rit="ruby -Ilib:test"


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
