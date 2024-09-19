# Simple_text_editing_with_Vim
## Start file
```
Make the pairs of lines match up by making each second line same as first:

# Appending text:
The name "Vim" is an acronym for "Vi IMproved"
The name "Vim" is an acronym for

# Editing text:
Vim is a text editor originally released by Bram Moolenaar in 1991 for the Amiga
Trivia: Vim is a text editor released by Bram Moolenaar in 1991 for the Amiga

# Deleting text:
Vim has a vi compatibility mode
Vim has a vi compatibility mode but when not in this mode Vim has many enhancements over vi
```
## End file
```
Make the pairs of lines match up by making each second line same as first:

# Appending text:
The name "Vim" is an acronym for "Vi IMproved"
The name "Vim" is an acronym for "Vi IMproved"

# Editing text:
Vim is a text editor originally released by Bram Moolenaar in 1991 for the Amiga
Vim is a text editor originally released by Bram Moolenaar in 1991 for the Amiga

# Deleting text:
Vim has a vi compatibility mode
Vim has a vi compatibility mode
```
## View Diff
<details><summary>Click me</summary>

```
5c5
< The name "Vim" is an acronym for
---
> The name "Vim" is an acronym for "Vi IMproved"
9c9
< Trivia: Vim is a text editor released by Bram Moolenaar in 1991 for the Amiga
---
> Vim is a text editor originally released by Bram Moolenaar in 1991 for the Amiga
13c13
< Vim has a vi compatibility mode but when not in this mode Vim has many enhancements over vi
---
> Vim has a vi compatibility mode
```
</details>

## VimGolf Solution
```sh
: '
https://stackoverflow.com/questions/6679388/challenge-simple-text-editing-with-vim-at-vimgolf-how-does-the-1-solution-wo

> help copy
:[range]co[py] {address}                                :co :copy
                      Copy the lines given by [range] to below the line
                      given by {address}.

                                                      :t
:t                      Synonym for copy.

> help {address}
Line numbers may be specified with:             :range {address}
      {number}        an absolute line number  E1247
      .               the current line                          :.
      $               the last line in the file                 :$
      %               equal to 1,$ (the entire file)            :%
      't              position of mark t (lowercase)            :'
      'T              position of mark T (uppercase); when the mark is in
                      another file it cannot be used in a range
      /{pattern}[/]   the next line where {pattern} matches     :/
                              also see :range-pattern below
      ?{pattern}[?]   the previous line where {pattern} matches :?
                              also see :range-pattern below
      \/              the next line where the previously used search
                      pattern matches
      \?              the previous line where the previously used search
                      pattern matches
      \&              the next line where the previously used substitute
                      pattern matches

> help :bar
                                                      :bar :\bar
'|' can be used to separate commands, so you can give multiple commands in one
line.  If you want to use '|' in an argument, precede it with '\'.

> help :,
The default line specifier for most commands is the cursor position, but the
commands ":write" and ":global" have the whole file (1,$) as default.

If more line specifiers are given than required for the command, the first
one(s) will be ignored

`.+1` is equivalent to `+`
'
:g/V/t.|+d<CR>ZZ
```
## KdbGolf Solution
```q
`out 0:{@[x;i+1;:;x i:3 7 11]}read0`:inp
```
