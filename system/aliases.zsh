alias reload!='. ~/.zshrc'
alias zshconfig='vim ~/.zshrc'
alias vimconfig='vim ~/.vimrc'
alias desk='cd ~/Desktop'
alias ls='eza'
alias l='ls -lah'
alias ..='cd ..'
alias md='mkdir -p'
alias rd=rmdir
alias cat='bat'
alias tmuxgo=$DOTFILES/script/tmuxgo
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy";

fssh() {
  local remotes remote
  remotes=$(cat $DOTFILES/remotes) &&
  remote=$(echo "$remotes" | fzf +m) &&
  ssh "$remote" -t zsh
}

whoseport () {
     lsof -i ":$1" | grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn} LISTEN
}

take () {
  mkdir -p "$@"
  cd "$@"
}