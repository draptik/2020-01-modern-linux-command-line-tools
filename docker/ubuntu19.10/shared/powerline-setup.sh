export PATH=$PATH:$HOME/.local/bin

# Powerline configuration
if [ -f $HOME/.local/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
    $HOME/.local/bin/powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    source $HOME/.local/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh
fi
