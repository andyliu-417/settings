# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

alias repo='cd ~;cd repos/repo'

alias care='cd ~;cd repos/repoh/hitplay-care-monitoring/packages/hitplay-care-user-dashboard'
alias admin='cd ~;cd repos/repoh/hitplay-care-monitoring/packages/hitplay-care-admin-dashboard'
alias hitshare='cd ~;cd repos/repoh/hitplay-care-monitoring/packages/hitplay-care-shared'

alias cares='care&&npm start;'
alias admins='admin&&npm start;'

alias task='care&&git pull&&gCheckout $1'
function gCheckout() {
	bName="feature/CARE-"$1
	git checkout -b $bName;
	git push origin $bName
}
alias gb='care&&git pull&&gBranch $1'
function gBranch() {
	bName="feature/CARE-"$1
	git checkout $bName;
}

alias su='hitshare&&npm install;'






