# Resort_and_deup_a_CSV_list
## Start file
```
// Animals ordered by continent.
africa = ["hippo", "lion", "atlas bear", "gorilla", "hyena", "giraffe", "zebra"]
asia = ["tiger", "honey bear", "yak", "monkey", "panda"]
europe = ["flea", "brown bear", "ox", "fox", "rat", "deer"]
namerica = ["polar bear", "alligator", "cougar", "wolf", "bison", "reindeer", "raccoon"]
samerica = ["puma", "anaconda", "llama", "capybara", "spectacled bear", "penguin", "sloth"]
australia = ["crocodile", "SPIDERS!", "dingo", "SPIDERS!", "kangaroo", "spider bear", "playtpus", "koala", "SPIDERS!", "echidna"]
```
## End file
```
// Animals ordered by continent.
africa = ["atlas bear", "giraffe", "gorilla", "hippo", "hyena", "lion", "zebra"]
asia = ["honey bear", "monkey", "panda", "tiger", "yak"]
europe = ["brown bear", "deer", "flea", "fox", "ox", "rat"]
namerica = ["alligator", "bison", "cougar", "polar bear", "raccoon", "reindeer", "wolf"]
samerica = ["anaconda", "capybara", "llama", "penguin", "puma", "sloth", "spectacled bear"]
australia = ["SPIDERS!", "crocodile", "dingo", "echidna", "kangaroo", "koala", "playtpus", "spider bear"]
```
## View Diff
<details><summary>Click me</summary>

```
2,7c2,7
< africa = ["hippo", "lion", "atlas bear", "gorilla", "hyena", "giraffe", "zebra"]
< asia = ["tiger", "honey bear", "yak", "monkey", "panda"]
< europe = ["flea", "brown bear", "ox", "fox", "rat", "deer"]
< namerica = ["polar bear", "alligator", "cougar", "wolf", "bison", "reindeer", "raccoon"]
< samerica = ["puma", "anaconda", "llama", "capybara", "spectacled bear", "penguin", "sloth"]
< australia = ["crocodile", "SPIDERS!", "dingo", "SPIDERS!", "kangaroo", "spider bear", "playtpus", "koala", "SPIDERS!", "echidna"]
---
> africa = ["atlas bear", "giraffe", "gorilla", "hippo", "hyena", "lion", "zebra"]
> asia = ["honey bear", "monkey", "panda", "tiger", "yak"]
> europe = ["brown bear", "deer", "flea", "fox", "ox", "rat"]
> namerica = ["alligator", "bison", "cougar", "polar bear", "raccoon", "reindeer", "wolf"]
> samerica = ["anaconda", "capybara", "llama", "penguin", "puma", "sloth", "spectacled bear"]
> australia = ["SPIDERS!", "crocodile", "dingo", "echidna", "kangaroo", "koala", "playtpus", "spider bear"]
```
</details>

## VimGolf Solution
```sh
qq+f"Do<Esc>pr,:s/, /,\r/g<CR>v``:sor u<CR>gvJ$r]kgJq5@qZZ
```
## KdbGolf Solution
```q
/ No need to write your own JSON parser if we have one built in. — Péter Györök
`:out 0:@[read0`:inp;1+til 6;{"= "sv@["="vs x;1;{ssr[.j.j distinct asc .j.k x;",";", "]}]}]
```
