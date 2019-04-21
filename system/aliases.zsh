alias reload!='. ~/.zshrc'
alias cls='clear' # Good 'ol Clear Screen command
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
alias zshconfig='vim ~/.zshrc'
alias vimconfig='vim ~/.vimrc'
alias desk='cd ~/Desktop'
alias vi='vim'
alias ls='exa'

fssh() {
  local remotes remote
  remotes=$(cat $DOTFILES/remotes) &&
  remote=$(echo "$remotes" | fzf +m) &&
  ssh "$remote" -t zsh
}
