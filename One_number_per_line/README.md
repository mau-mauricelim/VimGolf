# One_number_per_line
## Start file
```
- One number per line -
-----------------------
2,3,5,7,
11,13,17,
19,23,29,
```
## End file
```
2
3
5
7
11
13
17
19
23
29
```
## View Diff
<details><summary>Click me</summary>

```
1,5c1,10
< - One number per line -
< -----------------------
< 2,3,5,7,
< 11,13,17,
< 19,23,29,
---
> 2
> 3
> 5
> 7
> 11
> 13
> 17
> 19
> 23
> 29
```
</details>

## VimGolf Solution
```sh
:%s/,/\r/g|g!/\d/d<CR>ZZ
```
## KdbGolf Solution
```q
`:out 0:-1_","vs raze -3#read0`:inp
```
