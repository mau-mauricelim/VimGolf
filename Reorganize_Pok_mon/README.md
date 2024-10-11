# Reorganize_Pok_mon
## Start file
```
001 Bulbasaur
002 Ivysaur
003 Venusaur
004 Charmander
005 Charmeleon
006 Charizard
007 Squirtle
008 Wartortle
009 Blastoise
010 Caterpie
011 Metapod
012 Butterfree
013 Weedle
014 Kakuna
015 Beedrill
016 Pidgey
017 Pidgeotto
018 Pidgeot
```
## End file
```
Beedrill 015 
Blastoise 009 
Bulbasaur 001 
Butterfree 012 
Caterpie 010 
Charizard 006 
Charmander 004 
Charmeleon 005 
Ivysaur 002 
Kakuna 014 
Metapod 011 
Pidgeot 018 
Pidgeotto 017 
Pidgey 016 
Squirtle 007 
Venusaur 003 
Wartortle 008 
Weedle 013 
```
## View Diff
<details><summary>Click me</summary>

```
1,18c1,18
< 001 Bulbasaur
< 002 Ivysaur
< 003 Venusaur
< 004 Charmander
< 005 Charmeleon
< 006 Charizard
< 007 Squirtle
< 008 Wartortle
< 009 Blastoise
< 010 Caterpie
< 011 Metapod
< 012 Butterfree
< 013 Weedle
< 014 Kakuna
< 015 Beedrill
< 016 Pidgey
< 017 Pidgeotto
< 018 Pidgeot
---
> Beedrill 015 
> Blastoise 009 
> Bulbasaur 001 
> Butterfree 012 
> Caterpie 010 
> Charizard 006 
> Charmander 004 
> Charmeleon 005 
> Ivysaur 002 
> Kakuna 014 
> Metapod 011 
> Pidgeot 018 
> Pidgeotto 017 
> Pidgey 016 
> Squirtle 007 
> Venusaur 003 
> Wartortle 008 
> Weedle 013 
```
</details>

## VimGolf Solution
```sh
Q%norm4xA <Esc>p<CR>sor<CR>x<CR>
w<C-V>}D<C-V>GI <Esc>zP:sor<CR>ZZ
```
## KdbGolf Solution
```q
`:out 0:asc{4_x," ",4#x}@'read0`:inp
```
