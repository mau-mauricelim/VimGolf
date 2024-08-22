# simple_format_3/
## Start file
```
one:1
two:2
three:3
four:4
five:5
six:6
seven:7
eight:8
nine:9
ten:10
```
## End file
```
 1:        "one";
 2:        "two";
 3:      "three";
 4:       "four";
 5:       "five";
 6:        "six";
 7:      "seven";
 8:      "eight";
 9:       "nine";
10:        "ten";
```
## View Diff
<details><summary>Click me</summary>

```
--- simple_format_3//inp
+++ simple_format_3//out
@@ -1,10 +1,10 @@
-one:1
-two:2
-three:3
-four:4
-five:5
-six:6
-seven:7
-eight:8
-nine:9
-ten:10
+ 1:        "one";
+ 2:        "two";
+ 3:      "three";
+ 4:       "four";
+ 5:       "five";
+ 6:        "six";
+ 7:      "seven";
+ 8:      "eight";
+ 9:       "nine";
+10:        "ten";
```
</details>
## Solution
```sh
:%ri12|%s/\( \+\)\(.*\):\(.*\)/\3:\1 "\2";<CR>k<C-Q>ggI <Esc>GWi <Esc>ZZ
```
