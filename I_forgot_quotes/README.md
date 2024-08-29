# I_forgot_quotes
## Start file
```
foo = a
      ab
      abc
```
## End file
```
foo = "a"
      "ab"
      "abc"
```
## View Diff
<details><summary>Click me</summary>

```
1,3c1,3
< foo = a
<       ab
<       abc
---
> foo = "a"
>       "ab"
>       "abc"
```
</details>

## VimGolf Solution
```sh
:%norm A"<C-O>b"<CR>ZZ
```
## KdbGolf Solution
```q

```
