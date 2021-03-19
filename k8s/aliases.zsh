alias k='kubectl'
alias kg='kubectl get'
alias kgp='kubectl get pod'
alias kgd='kubectl get deployment'
alias kgs='kubectl get service'
alias ka='kubectl apply'
alias kd='kubectl describe'
alias krm='kubectl delete'
kalias() { alias | grep 'kubectl' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }
