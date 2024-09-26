# Search_different_SQL_column_with_similar_where_clause
## Start file
```
SELECT * FROM numbers WHERE local_number IN (
        "058307327",
        "058307328",
        "058307329"
)
```
## End file
```
SELECT * FROM numbers WHERE int_number IN (
        35958307327,
        35958307328,
        35958307329
)
```
## View Diff
<details><summary>Click me</summary>

```
1,4c1,4
< SELECT * FROM numbers WHERE local_number IN (
<         "058307327",
<         "058307328",
<         "058307329"
---
> SELECT * FROM numbers WHERE int_number IN (
>         35958307327,
>         35958307328,
>         35958307329
```
</details>

## VimGolf Solution
```sh
/"<CR><C-Q>g&359<C-A>g&5B5sint<Esc>ZZ
flc;int<Esc>/"<CR><C-Q>g&s359<Esc>g&ZZ
f_cbint<Esc><CR><C-Q>2jxw.gvs359<Esc>ZZ
```
## KdbGolf Solution
```q
`:out 0:ssr/[;("local";"\"";" 0");("int";"";" 359")]@'read0`:inp
```
