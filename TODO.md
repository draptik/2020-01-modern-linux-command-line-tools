# TODOs

## Random stuff / brainstorming

### Ascii

curl -L git.io/unix

### Bash expansion

mv Picture{,-of-my-cat}.jpg # I find brace expansion useful for renaming files. This cmd expands to "mv Picture.jpg Picture-of-my-cat.jpg"

### reversing everything

Put following in ~/bin/sl & chmod it:

```sh
LEN=$(ls "$@"|wc -L)
ls "$@"|rev| while read -r line
do
  printf "%${LEN}.${LEN}s\\n" "$line" | sed 's/^\(\s\+\)\(\S\+\)/\2\1/'
done
```

Whenever u type sl instead of ls you get a mirror image of ls. Train might be fun cyberciti.biz/tips/displays-…

## Mount usage

My vote for most underrated and unused Linux/Unix command goes to column:

```sh
mount
```

VS

```sh
mount | column -t
```

## tldr.sh: Simplified man pages

https://tldr.sh/

Interesting side fact: ported to many different languages (recommendation: npm)

