FROM ubuntu:19.10

RUN apt-get update && apt-get install -y \
    bash \
    git \
    wget \
    curl \
    vim \
    ruby \
    python3-dev \
    python3-pip \
    zsh \
    fish \
    tmux \
    byobu \
    ranger \
    highlight \
    odt2txt \
    jq \
    fd-find \
    fzf \
    bat \
    ruby-dev \
    ruby-colorize \
    boxes \
    pydf \
    ripgrep \
    libncurses5-dev libncursesw5-dev # NOTE: *ncurses* libs are needed for `no-more-secrets`

# python
RUN pip3 install \
    thefuck

# ruby gems
RUN gem install \
    lolcat \
    tmuxinator \
    colorls

# nms (no-more-secrets)
#
# I couldn't find an up-to-date Ubuntu PPA for this package, so we have to install it manually.
# The final installation step `make install` requires admin rights.
# Therefore I placed this here in the Dockerfile (before switching to a non-admin user)
RUN git clone https://github.com/bartobri/no-more-secrets.git && \
    cd ./no-more-secrets && \
    make nms-ncurses && \
    make sneakers-ncurses && \
    make install

# hyperfine
RUN wget https://github.com/sharkdp/hyperfine/releases/download/v1.9.0/hyperfine_1.9.0_amd64.deb && \
    dpkg -i hyperfine_1.9.0_amd64.deb

# ---------------------------------------------------------
# add non-root user "homer"
RUN useradd -ms /bin/bash homer
USER homer
WORKDIR /home/homer

# From here on: Everything is executed as non-admin...

# Powerline
COPY --chown=homer:homer shared/powerline-install.sh powerline-install.sh
RUN sh powerline-install.sh

COPY --chown=homer:homer shared/powerline-setup.sh powerline-setup.sh
RUN cat powerline-setup.sh >> .bashrc

# colorls
# Nerdfonts (the consuming shell/terminal must have the font installed!)

# christmas-tree
COPY --chown=homer:homer shared/christmas-tree.sh christmas-tree.sh

# ranger configs
COPY --chown=homer:homer .dotfiles/.config/ranger/* .config/ranger/

# ranger demos
COPY shared/demo-files-for-preview/* demo-files/

# tmuxinator setup
COPY --chown=homer:homer shared/.tmux-for-demo.conf .tmux-for-demo.conf
COPY --chown=homer:homer shared/.tmuxinator.yml .tmuxinator.yml
COPY --chown=homer:homer shared/.tmuxinator-light.yml .tmuxinator-light.yml
COPY --chown=homer:homer shared/start-demos.sh start-demos.sh
COPY --chown=homer:homer shared/start-demos-light.sh start-demos-light.sh

# .bash_aliases
COPY --chown=homer:homer .dotfiles/.bash_aliases .bash_aliases

# reload .bashrc
RUN sh . .bashrc

# TODO
#
# - config for ubuntu:
#
#   - DONE bat: dark background; light background
#   - DONE fd: add alias: default ubuntu uses `fdfind`
#   - DONE ranger: add configs and theme switching scripts
#   - DONE ranger: text file preview syntax highlighting is missing
#   - TODO fzf: demos with images
#
# - NICE-TO-HAVE tmuxinator with byobu: show infos at top, not at bottom
