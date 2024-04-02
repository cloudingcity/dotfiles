alias reload!='. ~/.zshrc'
alias zshconfig='vim ~/.zshrc'
alias vimconfig='vim ~/.vimrc'
alias desk='cd ~/Desktop'
alias ls='eza'
alias cat='bat'
alias tmuxgo=$DOTFILES/script/tmuxgo
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy";

fssh() {
  local remotes remote
  remotes=$(cat $DOTFILES/remotes) &&
  remote=$(echo "$remotes" | fzf +m) &&
  ssh "$remote" -t zsh
}

t() {
    PHPUNIT="vendor/bin/phpunit"
    if [ -f $PHPUNIT ]; then
        $PHPUNIT
    else
        go test $@
    fi
}

whoseport () {
     lsof -i ":$1" | grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn} LISTEN
}
