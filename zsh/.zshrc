# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="random"

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
plugins=(git battery)

source $ZSH/oh-my-zsh.sh


PROMPT="%{$fg[red]%}%n%{$reset_color%}:%{$fg[green]%}[%~]%{$reset_color%}%# "
RPROMPT="[%{$fg[magenta]%}%*%{$reset_color%}][%{$fg_no_bold[yellow]%}%?%{$reset_color%}][%h]"
#RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]%h[%?]"

# tab comletion from both ends
setopt completeinword
# Setting up history
#cat git/system-config/.history/* >>git/system-config/tmp
#rm git/system-config/.history/*
#cat git/system-config/tmp>>git/system-config/.history/`date -Idate`
HISTFILE='/home/paranoidsp/.bash_history'
HISTSIZE=SAVEHIST=10000000
setopt extendedglob
unsetopt caseglob
setopt interactivecomments # pound sign in interactive prompt
setopt auto_cd
REPORTTIME=3

# zsh history tweaks
setopt inc_append_history
setopt share_history
setopt extendedhistory
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
#rm ~/.zsh_history; ln -s ~paranoidsp/Dropbox/ubuntu/home/.zsh_history ~
#rm ~/.bash_history; ln -s ~paranoidsp/Dropbox/ubuntu/home/.bash_history ~

#Proxy

proxy="http://libjis:lib12345@proxy.iitm.ac.in:3128/"
hproxy="http://ee11b053:F1xhdg+19lt@hproxy.iitm.ac.in:3128/"
noproxy=""
noauth='http://localhost:1234/'
auth='http://libjis:lib12345@localhost:1234/'
export http_proxy=$hproxy

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:/home/paranoidsp/Dropbox/programs/bash:/home/paranoidsp/Dropbox/programs/bash:/home/paranoidsp/Dropbox/programs/bash


# Aliases

alias rmlck='sudo rm /var/lib/apt/lists/lock'
alias cardstat="cat /proc/acpi/bbswitch"
alias cardon="sudo tee /proc/acpi/bbswitch <<<ON"
alias cardoff="sudo tee /proc/acpi/bbswitch <<<OFF"
alias lns="ln -s"
alias rmlockarch="rm /var/lib/pacman/db.lck"
alias ..="cd .."
#if [$UID -ne 0 ]; then 
alias reboot='sudo reboot'
alias update='sudo apt-get update'
alias aginstall='sudo apt-get install'
alias mount='sudo mount'
#fi
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias svim="sudo vim"
export LD_LIBRARY_PATH=/usr/local/lib
PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig
export PKG_CONFIG_PATH
PATH=$PATH:/usr/local/cuda-5.0/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib
cd ~
PATH=$PATH:~/sml/bin
PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:/home/paranoidsp/Dropbox/programs/bash:/home/paranoidsp/Dropbox/programs/bash:/home/paranoidsp/Dropbox/programs/bash:/usr/local/cuda-5.0/bin:/home/paranoidsp/sml/bin:~/git/projects/coursera
PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:/home/paranoidsp/Dropbox/programs/bash:/home/paranoidsp/Dropbox/programs/bash:/home/paranoidsp/Dropbox/programs/bash:/usr/local/cuda-5.0/bin:/home/paranoidsp/sml/bin:/home/paranoidsp/git/projects/coursera:~/git/projects/scripts
#ec2 Setup
#export EC2_KEYPAIR=Karthik
export EC2_URL=https://ec2.us-east-1.amazonaws.com
export EC2_PRIVATE_KEY=$HOME/.ssh/pk-MPR73SJI6AH4DUFVLFM7YZ5ERF2HQGF6.pem
export EC2_CERT=~/.ssh/cert-MPR73SJI6AH4DUFVLFM7YZ5ERF2HQGF6.pem
export JAVA_HOME=/usr/lib/jvm/java-6-openjdk/


alias lsd='ls -d */'
alias rcp="rsync --partial --progress --append --rsh=ssh -r -h "
alias rmv="rsync --partial --progress --append --rsh=ssh -r -h --remove-sent-files"
source ~paranoidsp/git/system-config/.proxyrc

