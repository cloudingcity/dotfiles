POWERLINE_PATH=$HOME/Library/Python/2.7/lib/python/site-packages
POWERLINE_SCRIPT=$POWERLINE_PATH/powerline/bindings/zsh/powerline.zsh
if [ -f $POWERLINE_SCRIPT ]; then
    $POWERLINE_PATH/scripts/powerline-daemon -q
    source $POWERLINE_SCRIPT
fi
