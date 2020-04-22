alias gs='git status -sb'
alias gst='git stash'
alias gstp='git stash pop'
alias gstl='git stash list'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gbr='git branch'
alias gbrs='git branch -a'
alias gci='git commit'
alias gcm='git commit -m'
alias gcf='git commit --fixup'
alias gcl='git clone'
alias gd='git diff'
alias gunstage='git reset HEAD --'
alias gundo='git reset --soft HEAD~1'
alias glast='git log -1 HEAD'
alias gdifflast='git diff --cached HEAD^'
alias ga='git add'
alias gaa='git add -A'
alias gaci='git add -A && git commit'
alias gacm='git add -A && git commit -m'
alias gacf='git add -A && git commit --fixup'
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias glg2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias grb='git rebase'
alias grbi='git rebase -i'
alias grs='git reset'
alias grss='git reset --soft'
alias grsh='git reset --hard'
alias gp='git push'
alias gpl='git pull'
alias gf='git fetch'
alias gfa='git fetch --all'
alias gignore='git update-index --skip-worktree'
alias gunignore='git update-index --no-skip-worktree'
alias gignored='git ls-files -v | grep ^S'
galias() { alias | grep 'git' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }
alias nah="git reset --hard && git clean -df"
gclean() { git branch --merged | egrep -v "(\\*|master|staging|testing)" | xargs git branch -d }

fbr() {
  local branches branch
  branches=$(git branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}
