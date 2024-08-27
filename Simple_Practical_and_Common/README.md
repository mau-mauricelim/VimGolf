# Simple_Practical_and_Common
## Start file
```
*temp var1 0
*temp var2 "hi"
*temp var3 -1
*temp var4 42
*temp var5 "asdf"
*temp var6 0

Simple things we do all the time should be able to be done with very few keystrokes, but sometimes I find something I need to do makes me go, "There MUST be a better way."

This challenge is just a simple movement and entering text at a certain place.
```
## End file
```
*temp var1 0
*temp var2 "hi"
*temp var3 -1
*temp var4 42
*temp var5 "asdf"
*temp var6 0
*temp var7 11

Simple things we do all the time should be able to be done with very few keystrokes, but sometimes I find something I need to do makes me go, "There MUST be a better way."

New text.

This challenge is just a simple movement and entering text at a certain place.
```
## View Diff
<details><summary>Click me</summary>

```
6a7
> *temp var7 11
8a10,11
> 
> New text.
```
</details>

## Solution
```sh
5jYp<C-A>w11<C-A>GONew text.<CR><Esc>ZZ
```
