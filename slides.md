---
title: ░▒▓ modern linux command line tools ▓▒░
author: patrick @drechsler Hackerkegeln 2020-01 https://github.com/draptik/2020-01-modern-linux-command-line-tools
patat:
    pandocExtensions:
        - patat_extensions
        - autolink_bare_uris
        - emoji
        - hard_line_breaks
    incrementalLists: false
    wrap: true
    margins:
        left: 6
        right: 4
    theme:
        header: [bold, dullYellow]
        emph: [italic]
        strong: [bold]
        code: [vividYellow, onRgb#101060, bold]
        codeBlock: [dullWhite]
    images:
        backend: 'w3m'
        path: '/usr/lib/w3m/w3mimgdisplay'
---

<!--
- use Emoji Shortcodes: https://www.webfx.com/tools/emoji-cheat-sheet/
  - Examples: :smiley:, :thumbsup:, :white_check_mark:, :heavy_check_mark:, :ballot_box_with_check:, :collision:
- Ascii art generator: http://patorjk.com/software/taag/
-->

```text

███╗   ███╗ ██████╗ ██████╗ ███████╗██████╗ ███╗   ██╗
████╗ ████║██╔═══██╗██╔══██╗██╔════╝██╔══██╗████╗  ██║
██╔████╔██║██║   ██║██║  ██║█████╗  ██████╔╝██╔██╗ ██║
██║╚██╔╝██║██║   ██║██║  ██║██╔══╝  ██╔══██╗██║╚██╗██║
██║ ╚═╝ ██║╚██████╔╝██████╔╝███████╗██║  ██║██║ ╚████║
╚═╝     ╚═╝ ╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝

██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗
██║     ██║████╗  ██║██║   ██║╚██╗██╔╝
██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝
██║     ██║██║╚██╗██║██║   ██║ ██╔██╗
███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗
╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝

 ██████╗██╗     ██╗    ████████╗ ██████╗  ██████╗ ██╗     ███████╗
██╔════╝██║     ██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝
██║     ██║     ██║       ██║   ██║   ██║██║   ██║██║     ███████╗
██║     ██║     ██║       ██║   ██║   ██║██║   ██║██║     ╚════██║
╚██████╗███████╗██║       ██║   ╚██████╔╝╚██████╔╝███████╗███████║
 ╚═════╝╚══════╝╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝
```

---

# "modern" is relative...

**Douglas Adams**

I've come up with a set of rules that describe our reactions to technologies:

> 1. Anything that is in the world **when you're born** is normal and ordinary and is just a natural part of the way the world works.
>
> 2. Anything that's invented **between when you're fifteen and thirty-five** is new and exciting and revolutionary and you can probably get a career in it.
>
> 3. Anything invented **after you're thirty-five** is against the natural order of things.

---

# Target audience

- linux desktop CLI users
- linux admins

```text
  __________________________________________
 / This is the year of linux on the desktop \
|                                            |
|          ...Windows10 has WSL ;-)          |
 \                                          /
  ------------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

---

# Linux tooling philosophy

- **do one thing (and only one thing!) well**

- **chaining**

- _sound familiar? (hint: functional programming...)_

---

# Why? Improvements to...

- **productivity**

- **optics**
    - "unix porn" (`PS1`, `ls`, ...)

---

# Learn the basics

- `emacs` and `vim`
    - learn navigation, copy & paste, (and how to exit :thumbsup:)
    - pick one and become fluent

- `cd`, `ls`, `cat`, `less`, `find`, `grep`, `sed`, `tail`, `awk`, `dd`, `rsync`, ...

---

# terminals and shells

## What is the difference between **terminal** and **shell**?

```text
+--------------------+
|     "terminal"     |
+--------------------+
|                    |
| +--------------+   |
| |              |   |
| |    "shell"   |   |
| |              |   |
| +--------------+   |
|                    |
+--------------------+
```

### terminal

- **colors** (16 or more), **fonts** (utf8, ligatures, ...)
- **interactions**
    - keyboard shortcuts
    - mouse interaction (copy & paste, scrolling, selection, ...)

### shell

- **everything else** (f.ex. **`PS1`**, scripting language)

---

## terminal

### What is the best terminal?

- use your default

### Unicode, Emojis, Fonts, Image support (!)

- but think about enriching your output!

- Emojis: :thumbsup: :ballot_box_with_check: :collision: :v: :poop: :speech_balloon: :zap: € ★ :star:

```text
 _______________________________________
/\                                      \
\_| You've got to know when to hold 'em |
  | Know when to fold 'em               |
  | Know when to walk away              |
  | And know when to run                |
  |   __________________________________|_
   \_/____________________________________/
```

(...this presentation is running in a terminal (`kitty`), not a browser...)

<!-- The Gambler, Kenny Rogers -->

---

## shell

- bash
- zsh
- fish
- dash (embedded)

---

### shell / zsh

- https://www.zsh.org/

- package manager
    - oh-my-zsh (99k stars) https://ohmyz.sh
- category: shell

---

### shell / fish: The new kid on the block

- https://fishshell.com

- package manager
    - fisher (4k stars) https://github.com/jorgebucaran/fisher
    - oh-my-fish (5.5k stars) https://github.com/oh-my-fish/oh-my-fish
- category: shell

---

### shell / bash

- https://www.gnu.org/software/bash/

- package manager
    - bash-it (10k stars) https://github.com/Bash-it/bash-it
    - oh-my-bash (0.5k stars) https://ohmybash.github.io
- category: shell

---

### shell / PS1

- PS1: alias for "prompt"

- default: `username:/some/location $`

- `$PWD` present working directory

---

### shell / PS1: liquidprompt

- 3.9k stars https://github.com/nojhan/liquidprompt

- shortens `$PWD`
- adds git status
- available for `zsh`, `bash`, etc
- category: unix-porn

---

### shell / PS1: Powerline

- 11k stars https://github.com/powerline/powerline

- started as fancy statusline for `vim`...
- shortens `$PWD`
- adds git status
- available for `zsh`, `bash`, etc
- category: unix-porn

---

# byobu

- (mirrored repo: ~500 stars) http://byobu.co/

- `tmux`-wrapper for non-vim users

    - `tmux` (16k stars) https://github.com/tmux/tmux/wiki

- Keybindings `F1` - `F12`

- Sensible defaults (layout, info line)

- category: productivity

```text
   _________________________________
  /                                 \
  |    ...a personal favorite...    |
  \______________________________ '\
                             ()    \\
                               O    \\  .
                                 o  |\\/|
                                    / " '\
                                    . .   .
                                   /    ) |
                                  '  _.'  |
                                  '-'/    \
```

---

# ranger

- 6.9k stars https://ranger.github.io

- file explorer
- 2 layout options
    - miller columns ("mac" style)
    - multipane (similar to Midnight commander)
- powerful preview mode and program launcher (word, music, ...)
    - with image support for certain terminals (`iterms2`, `urxvt`, `kitty`) not `gnome-terminal` (!)
- key bindings: see `~/.config/ranger/rc.conf` starting at line ~300...
- category: navigation, file system
- Demos:
    - kitty with image preview
    - copy `yy` & paste `pp`

---

# tldr

- 25k stars https://tldr.sh/

- man pages can be difficult
- tldr: implemented in many languages (js, ruby, python, perl, haskell, etc)
- Demo: `ln`, `tar`, `scp`

---

# bat

- 17k stars https://github.com/sharkdp/bat

- `cat` & `less` with syntax highlighting

    _bat looks good on a dark background by default. However, if your terminal uses a light background, some themes like GitHub or OneHalfLight will work better for you._

- hint: not the same preview used by `ranger`...
- category: read / file display

```text
   _________________________________
  /                                 \
  |    daily usage                  |
  \______________________________ '\
                             ()    \\
                               O    \\  .
                                 o  |\\/|
                                    / " '\
                                    . .   .
                                   /    ) |
                                  '  _.'  |
                                  '-'/    \
```

---

# ripgrep

- 17k stars https://github.com/BurntSushi/ripgrep

- `ripgrep` recursively searches directories for a regex pattern
- very fast `grep` replacement (benchmarks on website)
- sensible defaults: respect `.gitignore`, ignores hidden files & folders
- command: `rg`
- category: search

```text
       \\\///
      / _  _ \
    (| (.)(.) |)
.-.OOOo--()--oOOO.-.
|                  |
|   Power-Tool!    | -> Demo: search in exercism folder
|                  |
'-.oooO------------'
   (   )   Oooo.
    \ (    (   )
     \_)    ) /
           (_/
```

---

# ripgrep-all

- 1.4k stars https://github.com/phiresky/ripgrep-all

- ripgrep, but also search in PDFs, E-Books, Office documents, zip, tar.gz, sqlite (!), etc
- command: `rga`
- faster than `pdfgrep` (see website for a benchmark)
- category: search
- Demo: search in Manning books folder

<!--
cd ~/Dropbox/Apps/Manning\ Books/
rga Vladimir
-->

---

# fzf

- 26k stars https://github.com/junegunn/fzf

- interactive fuzzy search
- pipe any line based input to fzf: Example `find * -type f | fzf`
- good integration with other tools
- nice helper methods for
    - files & directories `cd **<TAB>`
    - kill `kill -9 <TAB>`
    - host names `ssh **<TAB>`
    - environment variables & aliases `unset **<TAB>`, `export **<TAB>`, `unalias **<TAB>`
- category: search
- Demos:
    - find files and select them
    - search a text file

<!--

cd ~/exercism
## `fzf -m` multiselect
## select files with Shift+TAB
## search for "bob"
find * -type f | fzf -m

cd .
search for  "linux"
cat slides.md | fzf
-->

---

# fd

- 11k stars https://github.com/sharkdp/fd

- simple alternative to `find`
- "The command name is 50% shorter than `find`"
- Convenient syntax `fd PATTERN` (instead of `find -iname '*PATTERN*'`)
- Sensible defaults: `.gitignore`, ignore hidden files/folders
- fast
- category: search

<!--
## Demo

- TODO
-->

---

# hyperfine

- 4k stars https://github.com/sharkdp/hyperfine

- benchmarking tool

```bash
# comparing `fd` with `find`

# ubuntu uses `fdfind` by default
hyperfine --warmup 3 'fdfind -HI '.*[0-9]\.jpg$'' 'find ~ -iregex '.*[0-9]\.jpg''

# arch
hyperfine --warmup 3 'fd -HI '.*[0-9]\.jpg$' Documents/talks' 'find Documents/talks -iregex '.*[0-9]\.jpg$''

# unfair comparison: `fd` ignores hidden files and `.git` be default
hyperfine --warmup 3 'fd '.*[0-9]\.jpg$' Documents/talks' 'find Documents/talks -iregex '.*[0-9]\.jpg$''
```

- category: benchmarking

---

# progress

- 4k stars https://github.com/Xfennec/progress

- attach to any kind of copy
- category: monitoring

- Demo:
    - `~/tmp/demo/origin/` contains very large file
    - tmux split screen `~/tmp/demo/`
    - copy from `~/tmp/demo/origin/*` to `~/tmp/demo/destination/` using `cp`.
    - `progress -w`

---

# Ultimate Plumber (up)

- 4k stars https://github.com/akavel/up

- interactive piping
- instant live preview

- interactive REPL for bash piping

- category: search, file manipulation, interactive

- Demo: images/up-demo.gif

---

# lolcat

- 3k stars https://github.com/busyloop/lolcat

- Rainbows and unicorns

- category: fun, unix porn

---

# ttyd

- https://tsl0922.github.io/ttyd/

```text
            _ ._  _ , _ ._
          (_ ' ( `  )_  .__)
        ( (  (    )   `)  ) _)
       (__ (_   (_ . _) _) ,__)
           `~~`\ ' . /`~~`
           ,::: ;   ; :::,
          ':::::::::::::::'
 ______________/_ __ \_____________
|                                  |
|               ttyd               |
| share your terminal over the web |
|__________________________________|
```

- category: network, dangerous

<!--
echo -e "ttyd\nshare your terminal over the web" | boxes -d nuke -a c
-->

---

# no-more-secrets

- 4k stars https://github.com/bartobri/no-more-secrets

- when the tv team comes in your office

- category: fun, unix porn

---

# sl

- 1k stars https://github.com/mtoyoda/sl

- typo `sl` (instead of `ls`) -> show steam locomotive

- category: fun, unix porn

---

# thefuck

- 51k stars https://github.com/nvbn/thefuck

- fix common typos / mistakes

- category: productivity

---

# patat

- 1k stars https://github.com/jaspervdj/patat

- nerdy slides in your shell
- runs in a terminal (similar to `revealJs` for the browser)
- Pandoc syntax (f. ex. markdown)
- syntax highlighting

```javascript
let foo = "bar";
```

- emojis: :thumbsup:, :white_check_mark:, :ballot_box_with_check:, :collision:

- next slide: experimental image support in some terminals (same as for `ranger`)
    - `iterm2`, `urxvt`, `kitty`

- category: presentation, slides, unix porn

---

![softwerkskammer-logo](images/Softwerkskammer.png)

---

# ls on steroids

`ls` problem: sort by name and time at the same time...

**Use colors!**

- `colorls` ("the original" in ruby: https://github.com/athityakumar/colorls)
- `lsd` (in rust: https://github.com/Peltoche/lsd)
- `exa` (in rust: https://github.com/ogham/exa)

Required: font providing all symbols

- Example: NerdFonts https://github.com/ryanoasis/nerd-fonts

---

## colorls

- 2k stars https://github.com/athityakumar/colorls
- category: unix porn

```text
   _________________________________
  /                                 \
  |    daily usage                  |
  \______________________________ '\
                             ()    \\
                               O    \\  .
                                 o  |\\/|
                                    / " '\
                                    . .   .
                                   /    ) |
                                  '  _.'  |
                                  '-'/    \
```

---

## lsd

- 3k stars https://github.com/Peltoche/lsd
- alternative to `colorls`

---

# df alternatives

## pydf

- 24 stars https://github.com/k4rtik/pydf-pypi

- colorized `df` alternative

## ncdu

- https://dev.yorhel.nl/ncdu

- interactive `df` alternative

---

# boxes

- https://boxes.thomasjensen.com/docs/

- ascii art boxes

- show all templates: `boxes -l`

- category: unix porn

---

# monitoring

- htop
- apachetop
- ngxtop
- mtp
- pg_top
- powertop
- iotop
- iftop
- nethogs

---

# Resources

- https://twitter.com/climagic
- https://twitter.com/nixcraft

# Slides & docker examples

- https://github.com/draptik/2020-01-modern-linux-command-line-tools

---

# END

```text
              .-"""-.
             / .===. \
            / / a a \ \
           / ( \___/ ) \
  ______ooo\__\_____/__/________
 /                              \
| did I miss your favorite tool? |
 \_____________________ooo______/
          /           \
         /:.:.:.:.:.:.:\
             |  |  |
             \==|==/
             /-'Y'-\
            (__/ \__)
```

- mosh: https://mosh.org/
- neofetch (unix porn)
- expect https://likegeeks.com/expect-command/
- jq
- httpie
- http-prompt

<!--
echo -e "did I miss your favorite tool?" | boxes -d girl -a c
-->
