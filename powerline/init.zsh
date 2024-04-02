POWERLINE_SCRIPT=$HOME/Library/Python/3.9/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh
if [ -f $POWERLINE_SCRIPT ]; then
    powerline-daemon -q
    source $POWERLINE_SCRIPT
fi
