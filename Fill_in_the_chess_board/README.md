# Fill_in_the_chess_board
## Start file
```
  a  b  c  d  e  f  g  h
8
7
6
5
4
3
2
1
```
## End file
```
  a  b  c  d  e  f  g  h
8 a8 b8 c8 d8 e8 f8 g8 h8
7 a7 b7 c7 d7 e7 f7 g7 h7
6 a6 b6 c6 d6 e6 f6 g6 h6
5 a5 b5 c5 d5 e5 f5 g5 h5
4 a4 b4 c4 d4 e4 f4 g4 h4
3 a3 b3 c3 d3 e3 f3 g3 h3
2 a2 b2 c2 d2 e2 f2 g2 h2
1 a1 b1 c1 d1 e1 f1 g1 h1
```
## View Diff
<details><summary>Click me</summary>

```
2,9c2,9
< 8
< 7
< 6
< 5
< 4
< 3
< 2
< 1
---
> 8 a8 b8 c8 d8 e8 f8 g8 h8
> 7 a7 b7 c7 d7 e7 f7 g7 h7
> 6 a6 b6 c6 d6 e6 f6 g6 h6
> 5 a5 b5 c5 d5 e5 f5 g5 h5
> 4 a4 b4 c4 d4 e4 f4 g4 h4
> 3 a3 b3 c3 d3 e3 f3 g3 h3
> 2 a2 b2 c2 d2 e2 f2 g2 h2
> 1 a1 b1 c1 d1 e1 f1 g1 h1
```
</details>

## VimGolf Solution
```sh
jqqvya<C-Y><C-Y><Esc>pquuqa8@q+q7@aZZ
```
## KdbGolf Solution
```q
`:tmp 0:rtrim 1_'sv[" "]@'(" ",8#.Q.a),\:/:" 87654321"
```
