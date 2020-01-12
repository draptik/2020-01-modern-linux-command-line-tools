# Why?

People can try some of the tools which where illustrated in the session.

Without messing up their own system.

Using docker.

The docker container size: **~700MB** (based on Ubuntu 19.10)

# Usage

```sh
# create the image
./build-container.sh

# start docker container
./run-container.sh
```

Within the docker container:

```sh
# start tmux session using byobu
# switch between `tabs` with `F3` and `F4`
./start-demos.sh
```

# Fancy stuff won't work out of the box

If you want to try fancy stuff (everything having to do with fonts, emojis, icons) you will need to setup your 'consuming' terminal. This can't easily be provided by a docker container. If you know a solution: I will gladly accept pull requests ;-)

# TODOs

- inject sensible configs for the demo-tools
