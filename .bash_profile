source ~/.rvm/scripts/rvm

alias l="ls -la"
export EDITOR='vim'

export JAVA_HOME="/Library/Java/JavaVirtualMachines/1.6.0_37-b06-434.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH:/usr/local/mysql/bin"

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Prompt for Git Branch
PS1="\h:\\w\$(parse_git_branch)\$ "
