# Markdown_Blog_Editing
## Start file
```
# Introduction
# Normal mode
# Command Line mode
# Visual mode
```
## End file
```
* [Introduction](#introduction)
* [Normal mode](#normal-mode)
* [Command Line mode](#command-line-mode)
* [Visual mode](#visual-mode)
```
## View Diff
<details><summary>Click me</summary>

```
1,4c1,4
< # Introduction
< # Normal mode
< # Command Line mode
< # Visual mode
---
> * [Introduction](#introduction)
> * [Normal mode](#normal-mode)
> * [Command Line mode](#command-line-mode)
> * [Visual mode](#visual-mode)
```
</details>

## VimGolf Solution
```sh
:%norm r*wC[<C-Q><C-R>"](#<C-Q><C-R>")<C-Q><Esc>gu%f r-;.<CR>ZZ
```
## KdbGolf Solution
```q
`:out 0:{"* [",x,"](#",ssr[lower x:("# "vs x)1;" ";"-"],")"}@'read0`:inp
```
