export PATH="~/bin:/usr/local/bin:$PATH"
. ~/.nvm/nvm.sh
[[ -s "/Users/davidpeter/.rvm/scripts/rvm" ]] && source "/Users/davidpeter/.rvm/scripts/rvm"

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
alias gs="git status"
alias gd="git diff"
alias gap="git add -p"
alias gcach="git commit --amend -C HEAD"
alias gcaach="git commit -a --amend -C HEAD"
alias rit="ruby -Ilib:test"

source ~/.git-completion.bash
source ~/.git-prompt.sh
export PS1='\w\[\033[32m\]$(__git_ps1) \[\033[0m\]$ '

