# Poorly_indented_Python_comments
## Start file
```
      # Working with enumerations in Python #

from enum import Enum

class Shake(Enum):
    VANILLA = 7
    CHOCOLATE = 4
    COOKIES = 9
    MINT = 3

print(type(Shake.MINT))   #   <enum 'Shake'> 

print(Shake.CHOCOLATE.name)               #    CHOCOLATE
print(Shake.CHOCOLATE.value)                   #     4

print(repr(Shake['COOKIES']))              #  <Shake.COOKIES: 9>

Animal = Enum('Animal', 'ANT BEE CAT DOG')

A = list(Animal); print(A)
# [<Animal.ANT: 1>, <Animal.BEE: 2>, <Animal.CAT: 3>, <Animal.DOG: 4>]
```
## End file
```
      # Working with enumerations in Python #

from enum import Enum

class Shake(Enum):
    VANILLA = 7
    CHOCOLATE = 4
    COOKIES = 9
    MINT = 3

print(type(Shake.MINT))         # <enum 'Shake'> 

print(Shake.CHOCOLATE.name)     # CHOCOLATE
print(Shake.CHOCOLATE.value)    # 4

print(repr(Shake['COOKIES']))   # <Shake.COOKIES: 9>

Animal = Enum('Animal', 'ANT BEE CAT DOG')

A = list(Animal); print(A)
# [<Animal.ANT: 1>, <Animal.BEE: 2>, <Animal.CAT: 3>, <Animal.DOG: 4>]
```
## View Diff
<details><summary>Click me</summary>

```
11c11
< print(type(Shake.MINT))   #   <enum 'Shake'> 
---
> print(type(Shake.MINT))         # <enum 'Shake'> 
13,14c13,14
< print(Shake.CHOCOLATE.name)               #    CHOCOLATE
< print(Shake.CHOCOLATE.value)                   #     4
---
> print(Shake.CHOCOLATE.name)     # CHOCOLATE
> print(Shake.CHOCOLATE.value)    # 4
16c16
< print(repr(Shake['COOKIES']))              #  <Shake.COOKIES: 9>
---
> print(repr(Shake['COOKIES']))   # <Shake.COOKIES: 9>
```
</details>

## VimGolf Solution
```sh
$*X8P<C-Q>4n3<2 .ZZ
Mf#7i <Esc><C-Q>5j2<ll.ZZ
# The `.` register stores the last text inserted
AX9Pd32|3 dwn<Esc>u*4@.ZZ
```
## KdbGolf Solution
```q
`:out 0:@[read0`:inp;9+1 3 4 6;{"#"sv@["#"vs ssr[;"  ";" "]/[x];0;{32#x,9#""}]}]
```
