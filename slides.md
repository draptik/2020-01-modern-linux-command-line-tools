---
title: ░▒▓ modern linux command line tools ▓▒░
author: patrick @drechsler & frank blendinger @yooogan / Softwerkskammer 2019-12
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
        header: [bold]
        emph: [vividBlue, onVividBlack, italic]
        strong: [bold, dullMagenta, onVividBlack]
        codeBlock: [dullRed]
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

- have knowledge of the **editor war**
    - https://en.wikipedia.org/wiki/Editor_war
    - (`spacemacs` http://spacemacs.org/)

- `emacs` and `vim` keybindings
    - learn navigation, copy & paste, (and how to exit :thumbsup:)
    - pick one and become fluent

- `cd`, `ls`, `cat`, `less`, `find`, `grep`, `sed`, `tail`, `awk`, `dd`, `rsync`, ...

---

# shells

- `bash`

- `zsh`

- `fish`

- `dash`, and many more...

**...there is no "best shell"...**

---

# What is the difference between **terminal** and **shell**?

## terminal
  
- **colors** (16 or more), **fonts** (utf8, ligatures, ...)
- **interactions**
    - keyboard shortcuts
    - mouse interaction (copy & paste, scrolling, selection, ...)

## shell

- **everything else** (f.ex. **`PS1`**, scripting language)

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

---

# What is the best terminal?

- use your default

## Unicode, Emojis, Fonts, Image support (!)

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

# **fish**: The new kid on the block

- https://fishshell.com

- package manager
    - fisher (4k stars) https://github.com/jorgebucaran/fisher
    - oh-my-fish (5.5k stars) https://github.com/oh-my-fish/oh-my-fish

- category: shell

---

# **zsh**

- https://www.zsh.org/

- package manager
    - oh-my-zsh (99k stars) https://ohmyz.sh

- category: shell

---

# **bash**

- https://www.gnu.org/software/bash/

- package manager

    - bash-it (10k stars) https://github.com/Bash-it/bash-it
    - oh-my-bash (0.5k stars) https://ohmybash.github.io

- category: shell

---

# PS1: **liquidprompt**

- https://github.com/nojhan/liquidprompt

- available for `zsh`, `bash`, etc

- category: unix-porn

---

# PS1: **Powerline**

- https://github.com/powerline/powerline

- started as fancy statusline for `vim`...

- available for `zsh`, `bash`, etc

- category: unix-porn

---

# **ripgrep**

- https://github.com/BurntSushi/ripgrep

- `ripgrep` (17k stars) recursively searches directories for a regex pattern

- not POSIX-conform...

```text
       \\\///
      / _  _ \
    (| (.)(.) |)
.-.OOOo--()--oOOO.-.
|                  |
|   Power-Tool!    |
|                  |
'-.oooO------------'
   (   )   Oooo.
    \ (    (   )
     \_)    ) /
           (_/
```

```sh
#rg <searchterm>
rg /bin
```

---

# **byobu**

- http://byobu.co/

- `tmux`-wrapper for non-vim users

    - `tmux` https://github.com/tmux/tmux/wiki

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

# **ranger**

- https://ranger.github.io

- file explorer

- 2 layout options
    - miller columns
    - multipane (similar to Midnight commander)
- powerful preview mode and program launcher (word, music, ...)
    - with image support for certain terminals
        - `iterms2`
        - `urxvt`
        - `kitty`
        - not `gnome-terminal` (!)
- key bindings: see `~/.config/ranger/rc.conf` starting at line 300...

- category: navigation, file system

<!--
    Demo

- navigation
- rename
- copy & paste
- sorting
- open shell
- image preview (only in `kitty` or `urxvt` terminal)
-->

---

# **bat**

- https://github.com/sharkdp/bat

- `cat` & `less` with syntax highlighting

- From the docs:

    _bat looks good on a dark background by default. However, if your terminal uses a light background, some themes like GitHub or OneHalfLight will work better for you._

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

# **fzf**

- https://github.com/junegunn/fzf

- interactive fuzzy search
- `find * -type f | fzf`
- see `locate` for a static indexer
- category: search

<!--

    DEMO

    - TODO

-->

---

# **fd**

- https://github.com/sharkdp/fd

- simpler alternative to `find`
    - The command name is 50% shorter* than find :-).
    - Convenient syntax: fd PATTERN instead of `find -iname '*PATTERN*'`.
    - Colorized terminal output (similar to `ls`)
    - Smart case: the search is case-insensitive by default. It switches to case-sensitive if the pattern contains an uppercase character*.
    - Ignores hidden directories and files, by default.
    - Ignores patterns from your `.gitignore`, by default.
    - Regular expressions.
    - Unicode-awareness.

- fast

- category: search

<!--
## Demo

- TODO
-->

---

# **hyperfine**

- https://github.com/sharkdp/hyperfine

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

# **progress**

- https://github.com/Xfennec/progress

- attach to any kind of copy
- category: monitoring

---

# **Ultimate Plumber (up)**

- https://github.com/akavel/up

- interactive piping
- instant live preview

- interactive REPL for bash piping

- category: search, file manipulation, interactive

---

# **lolcat**

- https://github.com/busyloop/lolcat

- Rainbows and unicorns

- category: fun, unix porn

---

# **ttyd**

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

# **no-more-secrets**

- https://github.com/bartobri/no-more-secrets

- when the tv team comes in your office

- category: fun, unix porn

---

# **sl**

- https://github.com/mtoyoda/sl

 typo `sl` instead of `ls` -> show steam locomotive

- category: fun, unix porn

---

# **thefuck**

- https://github.com/nvbn/thefuck

- fix common typos / mistakes

- category: productivity

---

# **patat**

- https://github.com/jaspervdj/patat

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

# **colorls**

- https://github.com/athityakumar/colorls

- pimp the `ls` command
- NerdFonts: https://github.com/ryanoasis/nerd-fonts
- icons

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

# **lsd**

- https://github.com/Peltoche/lsd

- alternative to `colorls`

---

# **pydf**

- https://www.cyberciti.biz/tips/unix-linux-bsd-pydf-command-in-colours.html

- colorized `df` alternative

---

# **boxes**

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

# **Slides & docker examples**

- https://github.com/draptik/2019-12-modern-linux-command-line-tools

---

# END

```text
               .-"``"-.
              /______; \
             {_______}\|
             (/ a a \)(_)
             (.-.).-.)
  _____ooo__(    ^    )_________
 /           '-.___.-'          \
|                                |
| did I miss your favorite tool? |
|                                |
 \______________________ooo_____/
             |_  |  _|
             \___|___/
             {___|___}
              |_ | _|
              /-'Y'-\
             (__/ \__)
```

- mosh: https://mosh.org/
- neofetch (unix porn)
- expect https://likegeeks.com/expect-command/
- ncdu (interactive df)
- jq
- httpie
- http-prompt

<!--
echo -e "did I miss your favorite tool?" | boxes -d santa -a c
-->
