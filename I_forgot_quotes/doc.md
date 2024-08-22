# I_forgot_quotes/
## Start file
```
foo = a
      ab
      abc
```
## End file
```
foo = "a"
      "ab"
      "abc"
```
## View Diff
<details><summary>Click me</summary>

```
--- I_forgot_quotes//inp
+++ I_forgot_quotes//out
@@ -1,3 +1,3 @@
-foo = a
-      ab
-      abc
+foo = "a"
+      "ab"
+      "abc"
```
</details>
## Solution
```sh
:%norm A"<C-O>b"<CR>ZZ
```
