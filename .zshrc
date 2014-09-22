# This is my zshell configuration
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

#export goroot and gopath
export GOROOT=/usr/local/opt/go
export GOPATH=/Volumes/Data/Projects/Go

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias projects="cd /Volumes/Data/Projects"
alias goprojects="cd $GOPATH/src/github.com/GrimmKull/"
alias datebih="date \"+%d.%m.%Y.\""
alias pass="pass.sh"
lsrpaths() {
	ls -R | awk '
	/:$/&&f{s=$0;f=0}
	/:$/&&!f{sub(/:$/,"");s=$0;f=1;next}
	NF&&f{ print s"/"$0 }';
}

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras osx ruby rvm gem rails3 brew go node npm redis-cli github lighthouse sublime encode64 urltools web-search)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/share/python:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$PATH:$GOPATH/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

if [[ -s $HOME/.rvm/scripts/rvm ]]; then
  source $HOME/.rvm/scripts/rvm;
fi
