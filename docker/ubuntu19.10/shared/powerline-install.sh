#!/bin/bash

# NOTE: https://devpro.media/install-powerline-ubuntu/#install-pip-and-powerline

# NOTE: There is probably a more elegant way to install this...
git clone https://github.com/powerline/fonts.git \
    --depth=1 powerline-fonts \
    && ./powerline-fonts/install.sh

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

python3 get-pip.py --user

rm get-pip.py

.local/bin/pip install --user powerline-status
