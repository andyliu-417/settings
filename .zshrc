# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

alias repo='cd ~;cd repos/repo'

alias cares='cd ~;cd repos/repoh/hitplay-care-monitoring/packages/hitplay-care-user-dashboard;npm start;'
alias admins='cd ~;cd repos/repoh/hitplay-care-monitoring/packages/hitplay-care-admin-dashboard;npm start;'
alias care='cd ~;cd repos/repoh/hitplay-care-monitoring/packages/hitplay-care-user-dashboard'
alias admin='cd ~;cd repos/repoh/hitplay-care-monitoring/packages/hitplay-care-admin-dashboard'

alias task='git pull&&gcheckout $1'
function gcheckout() {
	str="feature/CARE-"$1
	git checkout -b $str;
}







