alias dp="docker ps"        # Get container process
alias dpa="docker ps -a"    # Get process included stop container
alias di="docker images"    # Get images
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'" # Get container IP
alias dr="docker run"
alias drm="docker rm"
alias drmi="docker rmi"
alias de="docker exec"
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }
