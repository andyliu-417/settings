# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/andyjunxi/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dracula"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

alias repo='cd ~;cd repos'

alias hitplay='cd ~;cd repos/hitplay-care-monitoring&&git pull origin master&&lerna bootstrap'
alias hp='cd ~;cd repos/hitplay-care-monitoring'
alias hppull='hp&&git pull origin master'
alias care='cd ~;cd repos/hitplay-care-monitoring/packages/hitplay-care-user-dashboard'
alias admin='cd ~;cd repos/hitplay-care-monitoring/packages/hitplay-care-admin-dashboard'
alias careb='cd ~;cd repos/hitplay-care-monitoring/packages/backend-user-dashboard-api'
alias adminb='cd ~;cd repos/hitplay-care-monitoring/packages/backend-admin-dashboard-api'
alias hitshare='cd ~;cd repos/hitplay-care-monitoring/packages/hitplay-care-shared'
alias share='cd ~;cd repos/hitplay-care-monitoring/packages/hitplay-care-shared'

alias cares='care&&npm start;'
alias admins='admin&&npm start;'
alias carebd='careb&&sls deploy;'
alias adminbd='adminb&&sls deploy;'

alias master='care&&git checkout master'

alias task='master&&gCheckout $1'
function gCheckout() {
	git pull origin master
	bName="feature/CARE-"$1
	git checkout -b $bName;
}

alias done='master&&gDone $1'
function gDone() {
	bName="feature/CARE-"$1
	git branch -D $bName;
}

alias gb='master&&gBranch $1'
function gBranch() {
	bName="feature/CARE-"$1
	git checkout $bName;
}

alias pg='playGround $1 $2'
function playGround() {
	str="$2"
	first=${str:0:1}
	rest=${str:1}
	upperFirst=`echo "$first" | tr a-z A-Z`
	name="$upperFirst$rest"

	mkdir $name
	cd $name

	if [ "$1" = "g" ]; then
cat > index.js << END_TEXT
import React, { Component } from "react";

class $name extends Component {
  render() {
    return <div> hello world </div>;
  }
}

export default $name;

END_TEXT

cat > style.js << END_TEXT
import styled from "styled-components";

END_TEXT
	fi

	cd ..
alias lernadp='hp&&echo "\n y"|lerna clean&&shareClean&&careClean&&sleep 10&&hp&&lerna bootstrap'
function shareClean() {
	share
	npm cache clean --force
}
function careClean() {
	care
	npm cache clean --force
}

alias hpandy='hp&&git checkout andy'

