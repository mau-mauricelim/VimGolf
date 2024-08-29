# remove_lines_containing_the_word_reader
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
1d0
< aklfdjwi37u8rifa a8fdiy 8837r asfyf3y reader
3,5d1
< lakdfj0923898 928329 192378 reader
< 213891823 reader 29083190283 893774701283
< https://website.grep/reader/somecomic.cbz
7,8d2
< reader
< not reader
```
</details>

## VimGolf Solution
```sh
:g/de/d<CR>ZZ
```
## KdbGolf Solution
```q
`:out 0:i where not(i:read0`:inp)like"*de*"
```
