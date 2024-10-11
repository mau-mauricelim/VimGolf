# Training to be a Vim Ninja 🥷
Challenges: https://www.vimgolf.com/
- [vimgolf.vimrc](https://gist.github.com/igrigorik/759425#file-vimgolf-vimrc)

## Bonus challenges 🎁
- Get personal stats of your [Played Challenges](.Played_Challenges/README.md#end-file) in a markdown table format
- KdbGolf - useful for parsing files

## VimGolf tips 💡
1. Use the shortest command name possible. Check the `help` page for commands.
2. Omit whitespace where possible.
3. Chain commands with `|` delimiter.
4. Use capital letter motion instead of double letter. E.g. Replace `yy` with `Y`.
5. Use `ZZ` to quit vim instead of `:x<CR>` or `:wq<CR>`.
6. Macros can be editted.
    1. Macros are stored into Vim registers, view them with `:reg`.
    2. Assuming the macro is in register `q`, paste the content of register `q` into the buffer using `:pu q`.
    3. Inspect and modify the line.
    4. Copy the macro into the desired register using `"qyy` (where `q` is the desired register here).
7. Learn from others' solutions and try to understand the logic behind the solution.
8. ``` `` ```: To the position before the latest jump.
9. `G`: Goto line [count], default last line, on the first non-blank character.
10. `X`: Delete [count] characters before the cursor.
11. `gJ`: Join [count] lines, with a minimum of two lines. Don't insert or remove any spaces.
12. `+/-`: [count] lines downward/upward, on the first non-blank character linewise.
13. `Q`: `Ex mode` is useful for chaining multiple commands. Use `x/q` to quit.
14. `norm` followed by a number does not require a whitespace.

## Useful Vim resources 📖
- [vim-galore](https://github.com/mhinz/vim-galore) Everything you need to know about Vim

## KdbGolf tips 💡
1. [We Don't Need No Stinkin’ Brackets](https://code.kx.com/q4m3/6_Functions/#615-we-dont-need-no-stinkin-brackets)

> NOTE: Golfing challenges and real world applications are different.

## Vim motions ⚡
|      |Left  |Middle|Right  |
|------|------|------|-------|
|Top   |gg    |H     |       |
|Middle|0 / ^ |M     |g_ / $ |
|Bottom|G     |L     |       |

## Sanitize challenge name 🧼
```q
q)sanitize:{"_"sv("_"vs?[x in .Q.an;x;"_"])except enlist""}
q)sanitize"Harder than \"abcd > a b c d\""
"Harder_than_abcd_a_b_c_d"
q)sanitize"대법원 인명용 한자 바인딩(Combine Hangul and Chinese characters)"
"Combine_Hangul_and_Chinese_characters"
```

## Happy golfing! ⛳
A compiled markdown [eBook](EBOOK.md) is available! 📖

## Personal stats 🎯
https://www.vimgolf.com/45533/mau-mauricelim

|Played Challenges|Entries|Best score|Best player score|Position|Number of attempts|
|-|-|-|-|-|-|
|[Reorganize Pokémon](https://www.vimgolf.com/challenges/9v0067037b1c0000000004f3)|57|18|18|#5 / 17|[10](https://www.vimgolf.com/challenges/9v0067037b1c0000000004f3/user/mau-mauricelim)|
|[Markdown Blog Editing](https://www.vimgolf.com/challenges/9v0066dd4c360000000003c9)|197|30|36|#14 / 52|[3](https://www.vimgolf.com/challenges/9v0066dd4c360000000003c9/user/mau-mauricelim)|
|[Fix timezone format](https://www.vimgolf.com/challenges/9v0066d89856000000000388)|186|15|15|#10 / 61|[5](https://www.vimgolf.com/challenges/9v0066d89856000000000388/user/mau-mauricelim)|
|[Search different SQL column with similar where clause](https://www.vimgolf.com/challenges/9v0066d8266e000000000367)|116|22|22|#6 / 36|[6](https://www.vimgolf.com/challenges/9v0066d8266e000000000367/user/mau-mauricelim)|
|[Poorly indented Python comments](https://www.vimgolf.com/challenges/9v00628a9b2f000000000220)|1313|15|15|#55 / 220|[11](https://www.vimgolf.com/challenges/9v00628a9b2f000000000220/user/mau-mauricelim)|
|[hello-world-vimgolf](https://www.vimgolf.com/challenges/9v0061478032000000000212)|2490|10|10|#341 / 705|[3](https://www.vimgolf.com/challenges/9v0061478032000000000212/user/mau-mauricelim)|
|[Contribute to keyboard mashing](https://www.vimgolf.com/challenges/9v00612c165c000000000211)|890|17|18|#116 / 270|[3](https://www.vimgolf.com/challenges/9v00612c165c000000000211/user/mau-mauricelim)|
|[Reordering Lorem Ipsum](https://www.vimgolf.com/challenges/9v00612800cb000000000210)|290|13|73|#41 / 66|[3](https://www.vimgolf.com/challenges/9v00612800cb000000000210/user/mau-mauricelim)|
|[Fill in the chess board](https://www.vimgolf.com/challenges/9v006115f6d000000000020c)|956|19|25|#63 / 183|[6](https://www.vimgolf.com/challenges/9v006115f6d000000000020c/user/mau-mauricelim)|
|[Simple, Practical, and Common](https://www.vimgolf.com/challenges/55b18bbea9c2c30d04000001)|33575|22|24|#3116 / 7406|[3](https://www.vimgolf.com/challenges/55b18bbea9c2c30d04000001/user/mau-mauricelim)|
|[One number per line](https://www.vimgolf.com/challenges/56fb2e75ccffcc0009026473)|18709|14|21|#2581 / 3856|[3](https://www.vimgolf.com/challenges/56fb2e75ccffcc0009026473/user/mau-mauricelim)|
|[Applying same text modification in several lines](https://www.vimgolf.com/challenges/5bbb82f969a25f0009541350)|2869|12|15|#542 / 847|[4](https://www.vimgolf.com/challenges/5bbb82f969a25f0009541350/user/mau-mauricelim)|
|[remove lines containing the word &quot;reader&quot;](https://www.vimgolf.com/challenges/5c264e64e8c64916d7fca650)|3574|9|10|#857 / 1158|[2](https://www.vimgolf.com/challenges/5c264e64e8c64916d7fca650/user/mau-mauricelim)|
|[Com(m)a Trouble](https://www.vimgolf.com/challenges/5ba020f91abf2d000951055c)|3790|12|15|#450 / 857|[4](https://www.vimgolf.com/challenges/5ba020f91abf2d000951055c/user/mau-mauricelim)|
|[Box it](https://www.vimgolf.com/challenges/5c742a5a50bdf70006d43280)|7902|21|25|#1044 / 1874|[5](https://www.vimgolf.com/challenges/5c742a5a50bdf70006d43280/user/mau-mauricelim)|
|[Cool or not?](https://www.vimgolf.com/challenges/5c82a157c82f3900064c82d7)|829|15|20|#166 / 230|[2](https://www.vimgolf.com/challenges/5c82a157c82f3900064c82d7/user/mau-mauricelim)|
|[Two pairs of cluster of letters creates word](https://www.vimgolf.com/challenges/5c93945c9caf21000ca842f7)|749|17|24|#142 / 178|[2](https://www.vimgolf.com/challenges/5c93945c9caf21000ca842f7/user/mau-mauricelim)|
|[Just the middle](https://www.vimgolf.com/challenges/54862fbb3f90ac0002904cf5)|11423|7|8|#3200 / 4185|[3](https://www.vimgolf.com/challenges/54862fbb3f90ac0002904cf5/user/mau-mauricelim)|
|[Basic renumbering](https://www.vimgolf.com/challenges/54595b13128576000257a3c1)|5645|11|11|#279 / 1263|[1](https://www.vimgolf.com/challenges/54595b13128576000257a3c1/user/mau-mauricelim)|
|[ninja substitution](https://www.vimgolf.com/challenges/5cb9d07d716c1b0009f69a40)|1420|14|18|#193 / 267|[2](https://www.vimgolf.com/challenges/5cb9d07d716c1b0009f69a40/user/mau-mauricelim)|
|[One to Ten](https://www.vimgolf.com/challenges/5c4d042acfafb4000c9f06c2)|2209|12|12|#365 / 669|[1](https://www.vimgolf.com/challenges/5c4d042acfafb4000c9f06c2/user/mau-mauricelim)|
|[Increment each number](https://www.vimgolf.com/challenges/5c645526fa8ae200061757ad)|1023|15|21|#183 / 248|[3](https://www.vimgolf.com/challenges/5c645526fa8ae200061757ad/user/mau-mauricelim)|
|[simple format (3)](https://www.vimgolf.com/challenges/5bff6e560d5dc0000ca3485b)|86|34|57|#20 / 24|[4](https://www.vimgolf.com/challenges/5bff6e560d5dc0000ca3485b/user/mau-mauricelim)|
|[I forgot quotes](https://www.vimgolf.com/challenges/5462e3f41198b80002512673)|15967|10|15|#2386 / 4174|[3](https://www.vimgolf.com/challenges/5462e3f41198b80002512673/user/mau-mauricelim)|
|[Words in parens](https://www.vimgolf.com/challenges/5192f96ad8df110002000002)|12928|13|14|#1177 / 3960|[5](https://www.vimgolf.com/challenges/5192f96ad8df110002000002/user/mau-mauricelim)|
|[Resort and deup a CSV list](https://www.vimgolf.com/challenges/5cace3ba888961000986ec8d)|167|44|48|#24 / 43|[6](https://www.vimgolf.com/challenges/5cace3ba888961000986ec8d/user/mau-mauricelim)|
|[Simple text editing with Vim](https://www.vimgolf.com/challenges/4d1a34ccfa85f32065000004)|12680|13|13|#725 / 3665|[2](https://www.vimgolf.com/challenges/4d1a34ccfa85f32065000004/user/mau-mauricelim)|

