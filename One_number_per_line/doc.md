# One_number_per_line/
## Start file
```
- One number per line -
-----------------------
2,3,5,7,
11,13,17,
19,23,29,
```
## End file
```
2
3
5
7
11
13
17
19
23
29
```
## View Diff
<details><summary>Click me</summary>

```
--- One_number_per_line//inp
+++ One_number_per_line//out
@@ -1,5 +1,10 @@
-- One number per line -
------------------------
-2,3,5,7,
-11,13,17,
-19,23,29,
+2
+3
+5
+7
+11
+13
+17
+19
+23
+29
```
</details>
## Solution
```sh
:%s/,//g|g!/\d/d<CR>ZZ
```
