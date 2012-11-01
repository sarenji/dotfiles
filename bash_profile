export PATH="~/bin:/usr/local/bin:$PATH"
. ~/.nvm/nvm.sh
[[ -s "/Users/davidpeter/.rvm/scripts/rvm" ]] && source "/Users/davidpeter/.rvm/scripts/rvm"

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
alias love="/Applications/love.app/Contents/MacOS/love"
alias pkglove="zip -r ../${PWD##*/}.love *"

# for android sdk
export PATH="$PATH:~/code/android-sdk-macosx/tools"

# for postgresql one-click installer
export PATH="$PATH:/Library/PostgreSQL/9.1/bin"

source ~/.git-completion.sh
export PS1='\w\[\033[32m\]$(__git_ps1) \[\033[0m\]$ '

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH


# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
