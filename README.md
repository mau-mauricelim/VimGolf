# Training to be a Vim Ninja 🥷
Challenges: https://www.vimgolf.com/
- [vimgolf.vimrc](https://gist.github.com/igrigorik/759425#file-vimgolf-vimrc)

## Personal stats 🎯
https://www.vimgolf.com/45533/mau-mauricelim

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

## Vim motions
|      |Left  |Middle|Right  |
|------|------|------|-------|
|Top   |gg    |H     |       |
|Middle|0 / ^ |M     |g_ / $ |
|Bottom|G     |L     |       |

## Sanitize challenge name
```q
q)sanitize:{"_"sv("_"vs?[x in .Q.an;x;"_"])except enlist""}
q)sanitize"Harder than \"abcd > a b c d\""
"Harder_than_abcd_a_b_c_d"
q)sanitize"대법원 인명용 한자 바인딩(Combine Hangul and Chinese characters)"
"Combine_Hangul_and_Chinese_characters"
```

### Happy golfing! ⛳
