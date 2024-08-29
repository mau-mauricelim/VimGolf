# Two_pairs_of_cluster_of_letters_creates_word
## Start file
```
't', 'wo', 'pa','irs', 'o', 'f','clus','ter', 'o', 'f', 'lett', 'ers', 'crea', 'tes', 'wor','d'
```
## End file
```
two
pairs
of
cluster
of
letters
creates
word
```
## View Diff
<details><summary>Click me</summary>

```
1c1,8
< 't', 'wo', 'pa','irs', 'o', 'f','clus','ter', 'o', 'f', 'lett', 'ers', 'crea', 'tes', 'wor','d'
---
> two
> pairs
> of
> cluster
> of
> letters
> creates
> word
```
</details>

## VimGolf Solution
```sh
qq2f,a<CR><Esc>q6@q:%s/\W//g<CR>ZZ
```
## KdbGolf Solution
```q

```
