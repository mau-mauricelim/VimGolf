# Training to be a Vim Ninja 🥷
Challenges: https://www.vimgolf.com/
- [vimgolf.vimrc](https://gist.github.com/igrigorik/759425#file-vimgolf-vimrc)

## Personal stats 🎯
https://www.vimgolf.com/45533/mau-mauricelim

|Played Challenges|Entries|Best score|Best player score|Position|Number of attempts|
|-|-|-|-|-|-|
|[Simple, Practical, and Common](https://www.vimgolf.com/challenges/55b18bbea9c2c30d04000001)|33507|22|24|#3111 / 7394|[3](https://www.vimgolf.com/challenges/55b18bbea9c2c30d04000001/user/mau-mauricelim)|
|[One number per line](https://www.vimgolf.com/challenges/56fb2e75ccffcc0009026473)|18678|14|21|#2579 / 3854|[3](https://www.vimgolf.com/challenges/56fb2e75ccffcc0009026473/user/mau-mauricelim)|
|[Applying same text modification in several lines](https://www.vimgolf.com/challenges/5bbb82f969a25f0009541350)|2855|12|15|#539 / 844|[4](https://www.vimgolf.com/challenges/5bbb82f969a25f0009541350/user/mau-mauricelim)|
|[remove lines containing the word &quot;reader&quot;](https://www.vimgolf.com/challenges/5c264e64e8c64916d7fca650)|3568|9|10|#857 / 1155|[2](https://www.vimgolf.com/challenges/5c264e64e8c64916d7fca650/user/mau-mauricelim)|
|[Com(m)a Trouble](https://www.vimgolf.com/challenges/5ba020f91abf2d000951055c)|3759|12|15|#446 / 850|[4](https://www.vimgolf.com/challenges/5ba020f91abf2d000951055c/user/mau-mauricelim)|
|[Box it](https://www.vimgolf.com/challenges/5c742a5a50bdf70006d43280)|7897|21|25|#1043 / 1872|[5](https://www.vimgolf.com/challenges/5c742a5a50bdf70006d43280/user/mau-mauricelim)|
|[Cool or not?](https://www.vimgolf.com/challenges/5c82a157c82f3900064c82d7)|829|15|20|#166 / 230|[2](https://www.vimgolf.com/challenges/5c82a157c82f3900064c82d7/user/mau-mauricelim)|
|[Two pairs of cluster of letters creates word](https://www.vimgolf.com/challenges/5c93945c9caf21000ca842f7)|749|17|24|#142 / 178|[2](https://www.vimgolf.com/challenges/5c93945c9caf21000ca842f7/user/mau-mauricelim)|
|[Just the middle](https://www.vimgolf.com/challenges/54862fbb3f90ac0002904cf5)|11387|7|8|#3199 / 4178|[3](https://www.vimgolf.com/challenges/54862fbb3f90ac0002904cf5/user/mau-mauricelim)|
|[ninja substitution](https://www.vimgolf.com/challenges/5cb9d07d716c1b0009f69a40)|1420|14|18|#193 / 267|[2](https://www.vimgolf.com/challenges/5cb9d07d716c1b0009f69a40/user/mau-mauricelim)|
|[One to Ten](https://www.vimgolf.com/challenges/5c4d042acfafb4000c9f06c2)|2201|12|12|#365 / 667|[1](https://www.vimgolf.com/challenges/5c4d042acfafb4000c9f06c2/user/mau-mauricelim)|
|[simple format (3)](https://www.vimgolf.com/challenges/5bff6e560d5dc0000ca3485b)|86|34|57|#20 / 24|[4](https://www.vimgolf.com/challenges/5bff6e560d5dc0000ca3485b/user/mau-mauricelim)|
|[I forgot quotes](https://www.vimgolf.com/challenges/5462e3f41198b80002512673)|15951|10|15|#2383 / 4169|[3](https://www.vimgolf.com/challenges/5462e3f41198b80002512673/user/mau-mauricelim)|
|[Words in parens](https://www.vimgolf.com/challenges/5192f96ad8df110002000002)|12886|13|14|#1175 / 3954|[5](https://www.vimgolf.com/challenges/5192f96ad8df110002000002/user/mau-mauricelim)|

## Bonus challenges 🎁
- Get personal stats of your [Played Challenges](Played_Challenges/README.md#end-file) in a markdown table format
- KdbGolf - useful for parsing files

## Golf tips 💡
1. Use the shortest command name possible. Check the `help` page for commands.
2. Omit whitespace where possible.
3. Chain commands with `|` delimiter.
4. Use capital letter motion instead of double letter. E.g. Replace `yy` with `Y`.
5. `H` goes all the way up vertically and `L` goes all the way down horizontally.
6. Use `ZZ` to quit vim instead of `:x<CR>` or `:wq<CR>`.
7. Macros can be editted.
    1. Macros are stored into Vim registers, view them with `:reg`.
    2. Assuming the macro is in register `q`, paste the content of register `q` into the buffer using `:pu q`.
    3. Inspect and modify the line.
    4. Copy the macro into the desired register using `"qyy` (where `q` is the desired register here).
8. Note that golfing challenges and real world applications are different.
9. Learn from others' solutions and try to understand the logic behind the solution.
10. ``` `` ``` moves cursor back to previous position.
11. Use `<num>G` to jump to line.

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

### Happy golfing! ⛳
