# James Junaidi's Custom Terminal Settings
#
#
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave

PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export ANDROID_AVD_HOME=~/.android/avd
# Aliases
# Establishing custom commands below
# First are shortcuts to modifier files
alias edit="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
# access csif quicky
alias csif="ssh jrjunaid@pc21.cs.ucdavis.edu"
# access CSIF using microsoft remote desktop
alias csifrdp="ssh -L 127.0.0.1:3390:pc21.cs.ucdavis.edu:3389 jrjunaid@pc21.cs.ucdavis.edu"

# display contents with colors
alias ls="ls -GH"
# display directory long
alias ll="ls -a -l"
# enable directory removing
alias rm="rm -i -d -r"

# set python to python3 instead of 2
alias python="python3"
# python pip3 to match python 3
alias pip="pip3"

# macros to clear
alias c="clear"
# macro to go back a director
alias ..="cd .."
# prevent cd errors
alias cd..="cd .."
# go home quickly
alias ~="cd ~"

# access vim with less characters + automatically opens vim with multiple tabs for multiple files
alias vi="vim -p"

# quick tar actions
alias mtar="tar -cvf"
alias otar="tar -xvf"
# quickly go to CS folders
alias cs="cd ~/Desktop/CS"
alias cs36c="cd ~/Desktop/CS/ecs36c"
alias cs50="cd ~/Desktop/CS/ecs50"

# compiler shortcuts for GNU C and C++
alias g++="g++ -std=c++11 -Wall -Werror"
alias gcc="gcc -Wall -Werror -std=c11"

#shortcut for GDB to LLDB
alias gdb="lldb"
# for the colored executables
export CLICOLOR=1
export LSCOLORS=gxfxbxdxcxegedabagacad

eval $(thefuck --alias)
