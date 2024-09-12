# Increment_each_number
## Start file
```
10794586310243795
```
## End file
```
21805697421354806
```
## View Diff
<details><summary>Click me</summary>

```
1c1
< 10794586310243795
---
> 21805697421354806
```
</details>

## VimGolf Solution
```sh
R21805697421354806<Esc>ZZ
```
## KdbGolf Solution
```q
`:out 0:enlist""sv string("J"$1 cut read0[`:inp]0)mod 10
```
