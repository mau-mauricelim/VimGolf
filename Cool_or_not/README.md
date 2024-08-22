# Cool_or_not/
## Start file
```
This is abc.
This is also abc.
This abc is cool.
This abc is so cool.
This is a simple abc.
This isn't a cool abc.
This abc is not as cool as used to be.
This abc really is cool.
This abc is not so cool
I finally found a real abc.
```
## End file
```
This is abc.
This is also abc.
This abcool is cool.
This abcool is so cool.
This is a simple abc.
This isn't a cool abc.
This abc is not as cool as used to be.
This abcool really is cool.
This abc is not so cool
I finally found a real abc.
```
## View Diff
<details><summary>Click me</summary>

```
--- Cool_or_not//inp
+++ Cool_or_not//out
@@ -1,10 +1,10 @@
 This is abc.
 This is also abc.
-This abc is cool.
-This abc is so cool.
+This abcool is cool.
+This abcool is so cool.
 This is a simple abc.
 This isn't a cool abc.
 This abc is not as cool as used to be.
-This abc really is cool.
+This abcool really is cool.
 This abc is not so cool
 I finally found a real abc.
```
</details>

## Solution
```sh
:g/l.$/s/c /cool <CR>ZZ
```
