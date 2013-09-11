
export PATH="/usr/local/share/npm/bin:/usr/local/sbin:/sbin:/usr/local/bin:/usr/bin:/bin"

export EDITOR=vim
export PS1="\u@\h:\w\$ "
export NODE_PATH="/usr/local/lib/node_modules"
export ANDROID_HOME="/usr/local/opt/android-sdk"

# shortcuts for less typing
alias ls="ls -Gp"
alias ll="ls -lGp"
alias la="ls -lGpa"
alias j="jobs"
alias s="ssh"
alias htop="sudo htop"
alias g="git status"

# mac os x server launchers
alias nginx.start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist"
alias nginx.stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist"
alias pg.start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg.stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias mongo.start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist"
alias mongo.stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist"
alias redis.start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
alias redis.stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"

# fun stuff
alias server="python -m SimpleHTTPServer 8888"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
