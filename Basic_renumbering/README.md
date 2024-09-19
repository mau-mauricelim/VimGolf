# Basic_renumbering
## Start file
```
10 PRINT "The actual"
15 PRINT "code doesn't"
16 PRINT "really matter."
20 PRINT "Just take"
25 PRINT "care of"
30 PRINT "the numbers."
```
## End file
```
10 PRINT "The actual"
20 PRINT "code doesn't"
30 PRINT "really matter."
40 PRINT "Just take"
50 PRINT "care of"
60 PRINT "the numbers."
```
## View Diff
<details><summary>Click me</summary>

```
2,6c2,6
< 15 PRINT "code doesn't"
< 16 PRINT "really matter."
< 20 PRINT "Just take"
< 25 PRINT "care of"
< 30 PRINT "the numbers."
---
> 20 PRINT "code doesn't"
> 30 PRINT "really matter."
> 40 PRINT "Just take"
> 50 PRINT "care of"
> 60 PRINT "the numbers."
```
</details>

## VimGolf Solution
```sh
<C-Q>Glr0<C-Q>Gg<C-A>ZZ
```
## KdbGolf Solution
```q
`out 0:string[10*1+til 6],'2_'read0`:inp
```
