# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/Bindle/zsh_custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jocafa"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/Users/jfaul/Scripts:/usr/local/sbin:$PATH:/usr/local/CrossPack-AVR/bin
export PATH=$HOME/Scripts:/usr/local/bin:/usr/local/sbin:$PATH
export EDITOR=vim

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export NODE_PATH=/usr/local/lib/jsctags/:$NODE_PATH

alias vi="vim"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias jslint="jsl -conf ~/.jsl.conf -process"
#alias phantomjs="/Applications/phantomjs.app/Contents/MacOS/phantomjs"
alias buspirate="screen /dev/tty.usbserial-A700ekMH 115200 8N1"
alias plask="/Applications/PlaskLauncher.app/Contents/Resources/Plask.app/Contents/MacOS/Plask"
alias sshuttle="/Users/jfaul/Source/sshuttle/sshuttle --dns -r jfaul@jocafa.com 0/0"
alias servethis="python -m SimpleHTTPServer 8888"

alias ipen0="ifconfig en0 | grep 'inet ' | cut -d ' ' -f 2"
alias ipen1="ifconfig en1 | grep 'inet ' | cut -d ' ' -f 2"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

clsd () {
  class-dump $1 | vim -R +"set ft=objc" -;
}

cdpath=(~ ~/Work ~/Work/ntp)

### OC Tanner Stuff
export JAVA_HOME=/Library/Java/Home
export ANT_HOME=/usr/bin/ant
export ANT_OPTS=-Xmx1g
export MAVEN_HOME='/usr/local/'
export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=384m'
export JBOSS_HOME=/Users/josh.faul/Work/ntp/jboss

### Java Maven Build Scripts
alias "aci"='ant clean install-artifacts'
alias "mvndev"='mvn -U -Plocal -DdbEnv=dev clean package jboss:hard-deploy'
alias "mvnqa"='mvn -U -Plocal -DdbEnv=qa -DskipTests clean package jboss:hard-deploy'

alias "int"='cd ~/Work/ntp/perfint/'
alias "ext"='cd ~/Work/ntp/perfext/'
alias "com"='cd ~/Work/ntp/perfcommon/'
alias "jbo"='cd ~/Work/ntp/jboss/bin/ && ./jboss_clear.sh'
alias "extl"='cd ~/Work/ntp/perfext/src/main/webapp/'

### Spiderman Scripts
alias "spiderman"='cd ~/Work/ntp/spiderman/'
alias "batm"='cd ~/Work/ntp/batman/'

export HISTCONTROL=ignoreboth:erasedups
export HISTTIMEFORMAT='%F %T '
export HISTIGNORE="pwd:history"
export PROMPT_COMMAND='history -a;'
# resize history size
export HISTSIZE=10000


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
