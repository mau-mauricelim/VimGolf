# Com_m_a_Trouble
## Start file
```
,0,1,2,3,4,5,6,7,89
,1,2,3,4,5,6,7,8,90
,2,3,4,5,6,7,8,9,01
,3,4,5,6,7,8,9,0,12
,4,5,6,7,8,9,0,1,23
56,7,8,9,0,1,2,3,4,
67,8,9,0,1,2,3,4,5,
78,9,0,1,2,3,4,5,6,
89,0,1,2,3,4,5,6,7,
90,1,2,3,4,5,6,7,8,
```
## End file
```
0,1,2,3,4,5,6,7,8,9
1,2,3,4,5,6,7,8,9,0
2,3,4,5,6,7,8,9,0,1
3,4,5,6,7,8,9,0,1,2
4,5,6,7,8,9,0,1,2,3
5,6,7,8,9,0,1,2,3,4
6,7,8,9,0,1,2,3,4,5
7,8,9,0,1,2,3,4,5,6
8,9,0,1,2,3,4,5,6,7
9,0,1,2,3,4,5,6,7,8
```
## View Diff
<details><summary>Click me</summary>

```
1,10c1,10
< ,0,1,2,3,4,5,6,7,89
< ,1,2,3,4,5,6,7,8,90
< ,2,3,4,5,6,7,8,9,01
< ,3,4,5,6,7,8,9,0,12
< ,4,5,6,7,8,9,0,1,23
< 56,7,8,9,0,1,2,3,4,
< 67,8,9,0,1,2,3,4,5,
< 78,9,0,1,2,3,4,5,6,
< 89,0,1,2,3,4,5,6,7,
< 90,1,2,3,4,5,6,7,8,
---
> 0,1,2,3,4,5,6,7,8,9
> 1,2,3,4,5,6,7,8,9,0
> 2,3,4,5,6,7,8,9,0,1
> 3,4,5,6,7,8,9,0,1,2
> 4,5,6,7,8,9,0,1,2,3
> 5,6,7,8,9,0,1,2,3,4
> 6,7,8,9,0,1,2,3,4,5
> 7,8,9,0,1,2,3,4,5,6
> 8,9,0,1,2,3,4,5,6,7
> 9,0,1,2,3,4,5,6,7,8
```
</details>

## VimGolf Solution
```sh
<C-Q>4jd5j$.0pH$PZZ
```
## KdbGolf Solution
```q
`:out 0:sv[","]@'string rotate'[t;10 10#t:til 10]
```
