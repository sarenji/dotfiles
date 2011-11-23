alias g='git'
alias gam="git commit -am"
alias gs="git status"
alias gd="git diff"
alias gm="git commit -m"
alias gamend="git commit --amend"
alias gb="git branch"
alias gco="git checkout"
alias gap="git add -p"
alias gp="git push"
alias gpp="git pull --rebase && git push origin master"
alias gppp="git pull --rebase && git push origin master && git push production master"
alias gci="git commit"
alias pngcrush='~/code/pngcrush/pngcrush'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
export PATH="$PATH:/Library/PostgreSQL/9.1/bin"
. ~/.nvm/nvm.sh

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

export PATH="~/bin:${PATH}"
