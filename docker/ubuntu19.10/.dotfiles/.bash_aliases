# -*- mode: sh -*-

# ls
alias ll='ls -lAF'
alias la='ls -lAh'
alias l='ls -CF'
alias lt='ls -Alhrt'

# colorls
#
## dark theme (default)
alias lc='colorls -lA --sd --gs'
alias lct='colorls -lA --sd --gs -t'    # sort by last-modified
alias lctr='colorls -lA --sd --gs -tr'  # sort by last-modified reverse
#
## light theme
## (just prefix `l` for `light`...)
alias llc='colorls -lA --sd --gs --light'
alias llct='colorls -lA --sd --gs --light -t'
alias llctr='colorls -lA --sd --gs --light -tr'

# fd
alias fd='fdfind'
