
export PATH="/usr/local/share/npm/bin:$PATH"

export PS1="\u@\h:\w\$ "
export NODE_PATH="/usr/local/lib/node_modules"

alias ls="ls -Gp"
alias ll="ls -lGp"
alias la="ls -lGpa"
alias j="jobs"
alias s="ssh"
alias htop="sudo htop"
alias g="git status"
alias php.start="launchctl load ~/Library/LaunchAgents/homebrew-php.josegonzalez.php54.plist"
alias php.stop="launchctl unload ~/Library/LaunchAgents/homebrew-php.josegonzalez.php54.plist"
alias nginx.start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist"
alias nginx.stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

