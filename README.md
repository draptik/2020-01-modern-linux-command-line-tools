# Modern linux command line tools

This talk was inspired by Martin Leyrer's talk at Gulaschprogrammiernacht 19 (CCC).

- [GPN19 Moderne Kommandozeilen-Werkzeuge (youtube)](https://www.youtube.com/watch?v=8d8-PpcLc24&t=12s)

## Presentation

Since this is a talk for command line users,
the presentation is run within a shell using
[`patat`](https://github.com/jaspervdj/patat) ;-)

If you just need the content: Read `slides.md`.

### Prerequisites

for running this presentation:

- [`patat`: https://github.com/jaspervdj/patat](https://github.com/jaspervdj/patat)
- [`tmux`: https://github.com/tmux/tmux/wiki](https://github.com/tmux/tmux/wiki)
- [`byobu`: http://byobu.co/](http://byobu.co/)
- [`tmuxinator`: https://github.com/tmuxinator/tmuxinator](https://github.com/tmuxinator/tmuxinator)

Optional: ...with image support (only required for 1 demo slide):

- [`kitty` terminal: https://sw.kovidgoyal.net/kitty/](https://sw.kovidgoyal.net/kitty/#)
  - if you run into trouble: try removing the image support & demo slide containing an image:
    - delete the `images` section from `slides.md` (`patat` section at the beginning of the file)
    - delete the slide with `![softwerkskammer-logo](images/Softwerkskammer.png)`

### Usage

- start a shell
- increase font size of the terminal (see slide "What is the difference between terminal and shell?" for maximum size)
- `./start-slides.sh` (adopt to your setup)
- navigate with cursor keys (or vim bindings)
- (optional) open new browser window with all links mentioned in separate tabs in incognito mode: run `open-browser.sh`

## Live-Demos

Run `./start-demos.sh`

This starts `tmuxinator`, which in turn starts a demonstration of all tools.
This will likely fail on your system...

## Your playground: Docker container

In case you want to try some of the tools mentioned during the presentation, you can safely experiment using the provided docker container located in `docker/ubuntu19.10`. Please read the `README.md` within that folder: [docker/ubuntu19.10/README.md](docker/ubuntu19.10/README.md).
