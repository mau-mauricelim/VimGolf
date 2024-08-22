# remove_lines_containing_the_word_reader/
## Start file
```
aklfdjwi37u8rifa a8fdiy 8837r asfyf3y reader
ksaldfjlasreadr aodifufjoe readddddddrrfai 
lakdfj0923898 928329 192378 reader
213891823 reader 29083190283 893774701283
https://website.grep/reader/somecomic.cbz
https://website.ls/download/somecomic.cbz
reader
not reader
```
## End file
```
ksaldfjlasreadr aodifufjoe readddddddrrfai 
https://website.ls/download/somecomic.cbz
```
## View Diff
<details><summary>Click me</summary>

```
--- remove_lines_containing_the_word_reader//inp
+++ remove_lines_containing_the_word_reader//out
@@ -1,8 +1,2 @@
-aklfdjwi37u8rifa a8fdiy 8837r asfyf3y reader
 ksaldfjlasreadr aodifufjoe readddddddrrfai 
-lakdfj0923898 928329 192378 reader
-213891823 reader 29083190283 893774701283
-https://website.grep/reader/somecomic.cbz
 https://website.ls/download/somecomic.cbz
-reader
-not reader
```
</details>

## Solution
```sh
:g/de/d<CR>ZZ
```
