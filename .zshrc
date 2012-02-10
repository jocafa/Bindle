# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="jocafa"
ZSH_THEME="jreese"

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
plugins=(git brew node npm vi-mode taskwarrior)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/Users/jfaul/Scripts:/usr/local/sbin:$PATH:/usr/local/CrossPack-AVR/bin
export PATH=/Users/jfaul/Scripts:/usr/local/bin:/usr/local/sbin:$PATH
export EDITOR=vim
source $HOME/.rvm/scripts/rvm
#export NODE_PATH=/usr/local/lib/node_modules

alias jslint="jsl -conf ~/.jsl.conf -process"
alias phantomjs="/Applications/phantomjs.app/Contents/MacOS/phantomjs"
alias buspirate="screen /dev/tty.usbserial-A700ekMH 115200 8N1"
