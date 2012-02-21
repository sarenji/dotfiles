export PATH="~/bin:$PATH"
. ~/.nvm/nvm.sh
[[ -s "/Users/davidpeter/.rvm/scripts/rvm" ]] && source "/Users/davidpeter/.rvm/scripts/rvm"

alias g="git"
alias gp="git push"
alias gpp="git pull --rebase && git push origin master"
alias gppp="git pull --rebase && git push origin master && git push production master"
alias gb="git branch"
alias gam="git commit -am"
alias gci="git commit"
alias gm="git commit -m"
alias gco="git checkout"
alias gs="git status"
alias gd="git diff"
alias gap="git add -p"
alias gcach="git commit --amend -C HEAD"
alias gcaach="git commit -a --amend -C HEAD"
alias rit="ruby -Ilib:test"

# for android sdk
export PATH="$PATH:~/code/android-sdk-macosx/tools"

source ~/.git-completion.sh
export PS1='\w\[\033[32m\]$(__git_ps1) \[\033[0m\]$ '

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
