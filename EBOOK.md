# VimGolf
## Table of contents
- [applying_same_text_modification_in_several_lines](#applying_same_text_modification_in_several_lines)
- [box_it](#box_it)
- [com_m_a_trouble](#com_m_a_trouble)
- [contribute_to_keyboard_mashing](#contribute_to_keyboard_mashing)
- [cool_or_not](#cool_or_not)
- [fill_in_the_chess_board](#fill_in_the_chess_board)
- [i_forgot_quotes](#i_forgot_quotes)
- [increment_each_number](#increment_each_number)
- [just_the_middle](#just_the_middle)
- [markdown_blog_editing](#markdown_blog_editing)
- [one_number_per_line](#one_number_per_line)
- [one_to_ten](#one_to_ten)
- [reordering_lorem_ipsum](#reordering_lorem_ipsum)
- [resort_and_deup_a_csv_list](#resort_and_deup_a_csv_list)
- [simple_practical_and_common](#simple_practical_and_common)
- [two_pairs_of_cluster_of_letters_creates_word](#two_pairs_of_cluster_of_letters_creates_word)
- [words_in_parens](#words_in_parens)
- [hello-world-vimgolf](#hello-world-vimgolf)
- [ninja_substitution](#ninja_substitution)
- [remove_lines_containing_the_word_reader](#remove_lines_containing_the_word_reader)
- [simple_format_3](#simple_format_3)
# Applying_same_text_modification_in_several_lines
## Start file
```
Assert.ThrowsAsync<Exception>(() => _auction.StartSellingItem());
Assert.ThrowsAsync<Exception>(() => _application.StartBiddingIn(_auction));
Assert.ThrowsAsync<Exception>(() => _auction.HasReceivedJoinRequestFromSniper());
Assert.ThrowsAsync<Exception>(() => _auction.AnnounceClosed());
Assert.ThrowsAsync<Exception>(() => _application.ShowsSniperHasLostAuction());
```
## End file
```
_auction.StartSellingItem();
_application.StartBiddingIn(_auction);
_auction.HasReceivedJoinRequestFromSniper();
_auction.AnnounceClosed();
_application.ShowsSniperHasLostAuction();
```
## View Diff
<details><summary>Click me</summary>

```
1,5c1,5
< Assert.ThrowsAsync<Exception>(() => _auction.StartSellingItem());
< Assert.ThrowsAsync<Exception>(() => _application.StartBiddingIn(_auction));
< Assert.ThrowsAsync<Exception>(() => _auction.HasReceivedJoinRequestFromSniper());
< Assert.ThrowsAsync<Exception>(() => _auction.AnnounceClosed());
< Assert.ThrowsAsync<Exception>(() => _application.ShowsSniperHasLostAuction());
---
> _auction.StartSellingItem();
> _application.StartBiddingIn(_auction);
> _auction.HasReceivedJoinRequestFromSniper();
> _auction.AnnounceClosed();
> _application.ShowsSniperHasLostAuction();
```
</details>

## VimGolf Solution
```sh
:%norm dt_%x<CR>ZZ
```
## KdbGolf Solution
```q
`:out 0:{ssr[36_x;"))";")"]}@'read0`:inp
```
# Box_it
## Start file
```
My dream is to be in a box
```
## End file
```
###############################
# My dream was to be in a box #
###############################
```
## View Diff
<details><summary>Click me</summary>

```
1c1,3
< My dream is to be in a box
---
> ###############################
> # My dream was to be in a box #
> ###############################
```
</details>

## VimGolf Solution
```sh
fia<BS>wa<Esc>I# <Esc>A #<Esc>YpVr#YkPZZ
```
## KdbGolf Solution
```q
`:out 0:{(c;s;c:count[s:"# ",ssr[x;"is";"was"]," #"]#"#")}read0[`:inp]0
```
# Com_m_a_Trouble
## Start file
```
,0,1,2,3,4,5,6,7,89
,1,2,3,4,5,6,7,8,90
,2,3,4,5,6,7,8,9,01
,3,4,5,6,7,8,9,0,12
,4,5,6,7,8,9,0,1,23
56,7,8,9,0,1,2,3,4,
67,8,9,0,1,2,3,4,5,
78,9,0,1,2,3,4,5,6,
89,0,1,2,3,4,5,6,7,
90,1,2,3,4,5,6,7,8,
```
## End file
```
0,1,2,3,4,5,6,7,8,9
1,2,3,4,5,6,7,8,9,0
2,3,4,5,6,7,8,9,0,1
3,4,5,6,7,8,9,0,1,2
4,5,6,7,8,9,0,1,2,3
5,6,7,8,9,0,1,2,3,4
6,7,8,9,0,1,2,3,4,5
7,8,9,0,1,2,3,4,5,6
8,9,0,1,2,3,4,5,6,7
9,0,1,2,3,4,5,6,7,8
```
## View Diff
<details><summary>Click me</summary>

```
1,10c1,10
< ,0,1,2,3,4,5,6,7,89
< ,1,2,3,4,5,6,7,8,90
< ,2,3,4,5,6,7,8,9,01
< ,3,4,5,6,7,8,9,0,12
< ,4,5,6,7,8,9,0,1,23
< 56,7,8,9,0,1,2,3,4,
< 67,8,9,0,1,2,3,4,5,
< 78,9,0,1,2,3,4,5,6,
< 89,0,1,2,3,4,5,6,7,
< 90,1,2,3,4,5,6,7,8,
---
> 0,1,2,3,4,5,6,7,8,9
> 1,2,3,4,5,6,7,8,9,0
> 2,3,4,5,6,7,8,9,0,1
> 3,4,5,6,7,8,9,0,1,2
> 4,5,6,7,8,9,0,1,2,3
> 5,6,7,8,9,0,1,2,3,4
> 6,7,8,9,0,1,2,3,4,5
> 7,8,9,0,1,2,3,4,5,6
> 8,9,0,1,2,3,4,5,6,7
> 9,0,1,2,3,4,5,6,7,8
```
</details>

## VimGolf Solution
```sh
<C-Q>4jd5j$.0pH$PZZ
```
## KdbGolf Solution
```q
`:out 0:sv[","]@'string rotate'[t;10 10#t:til 10]
```
# Contribute_to_keyboard_mashing
## Start file
```
jgjogk
imnmr
ignsong
mgrga
ye
kpart
kkkkkkkkkkkkkekkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk oooooooooooooooooooooooooooooooooooooo
jjij
```
## End file
```
jgjogk
imnmr
ignsong
mgrga
ye
kpart
on
kkkkkkkkkkkkkenkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk oooooooooooooooooooooooooooooooooooooof
od
jjij
```
## View Diff
<details><summary>Click me</summary>

```
7c7,9
< kkkkkkkkkkkkkekkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk oooooooooooooooooooooooooooooooooooooo
---
> on
> kkkkkkkkkkkkkenkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk oooooooooooooooooooooooooooooooooooooof
> od
```
</details>

## VimGolf Solution
```sh
44 rnAf<CR>od<Esc>kOon<Esc>ZZ
```
## KdbGolf Solution
```q
r[6 7 8 9]:(r:read0[`:inp],"o",'"nd")8 6 9 7;`:out 0:@[r;7;{@[x;14;:;"n"],"f"}]
```
# Cool_or_not
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
3,4c3,4
< This abc is cool.
< This abc is so cool.
---
> This abcool is cool.
> This abcool is so cool.
8c8
< This abc really is cool.
---
> This abcool really is cool.
```
</details>

## VimGolf Solution
```sh
:g/l.$/s/c /cool <CR>ZZ
```
## KdbGolf Solution
```q
`:out 0:?[i like"*l.";ssr[;"c ";"cool "]@'i;i:read0`:inp]
```
# Fill_in_the_chess_board
## Start file
```
  a  b  c  d  e  f  g  h
8
7
6
5
4
3
2
1
```
## End file
```
  a  b  c  d  e  f  g  h
8 a8 b8 c8 d8 e8 f8 g8 h8
7 a7 b7 c7 d7 e7 f7 g7 h7
6 a6 b6 c6 d6 e6 f6 g6 h6
5 a5 b5 c5 d5 e5 f5 g5 h5
4 a4 b4 c4 d4 e4 f4 g4 h4
3 a3 b3 c3 d3 e3 f3 g3 h3
2 a2 b2 c2 d2 e2 f2 g2 h2
1 a1 b1 c1 d1 e1 f1 g1 h1
```
## View Diff
<details><summary>Click me</summary>

```
2,9c2,9
< 8
< 7
< 6
< 5
< 4
< 3
< 2
< 1
---
> 8 a8 b8 c8 d8 e8 f8 g8 h8
> 7 a7 b7 c7 d7 e7 f7 g7 h7
> 6 a6 b6 c6 d6 e6 f6 g6 h6
> 5 a5 b5 c5 d5 e5 f5 g5 h5
> 4 a4 b4 c4 d4 e4 f4 g4 h4
> 3 a3 b3 c3 d3 e3 f3 g3 h3
> 2 a2 b2 c2 d2 e2 f2 g2 h2
> 1 a1 b1 c1 d1 e1 f1 g1 h1
```
</details>

## VimGolf Solution
```sh
jqqvya<C-Y><C-Y><Esc>pquuqa8@q+q7@aZZ
```
## KdbGolf Solution
```q
`:tmp 0:rtrim 1_'sv[" "]@'(" ",8#.Q.a),\:/:" 87654321"
```
# I_forgot_quotes
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
1,3c1,3
< foo = a
<       ab
<       abc
---
> foo = "a"
>       "ab"
>       "abc"
```
</details>

## VimGolf Solution
```sh
:%norm A"<C-O>b"<CR>ZZ
```
## KdbGolf Solution
```q
`:out 0:{" "sv@[v;-1+count v:" "vs x;{"\"",x,"\""}]}@'read0`:inp
```
# Increment_each_number
## Start file
```
10794586310243795
```
## End file
```
21805697421354806
```
## View Diff
<details><summary>Click me</summary>

```
1c1
< 10794586310243795
---
> 21805697421354806
```
</details>

## VimGolf Solution
```sh
R21805697421354806<Esc>ZZ
```
## KdbGolf Solution
```q
`:out 0:enlist""sv string("J"$1 cut read0[`:inp]0)mod 10
```
# Just_the_middle
## Start file
```
Leave only the
numbered lines.
LINE 1
LINE 2
LINE 3
That's all.
Thank you
very much.
```
## End file
```
LINE 1
LINE 2
LINE 3
```
## View Diff
<details><summary>Click me</summary>

```
1,2d0
< Leave only the
< numbered lines.
6,8d3
< That's all.
< Thank you
< very much.
```
</details>

## VimGolf Solution
```sh
2D3jdGZZ
```
## KdbGolf Solution
```q
`:out 0:read0[`:inp]2 3 4
```
# Markdown_Blog_Editing
## Start file
```
# Introduction
# Normal mode
# Command Line mode
# Visual mode
```
## End file
```
* [Introduction](#introduction)
* [Normal mode](#normal-mode)
* [Command Line mode](#command-line-mode)
* [Visual mode](#visual-mode)
```
## View Diff
<details><summary>Click me</summary>

```
1,4c1,4
< # Introduction
< # Normal mode
< # Command Line mode
< # Visual mode
---
> * [Introduction](#introduction)
> * [Normal mode](#normal-mode)
> * [Command Line mode](#command-line-mode)
> * [Visual mode](#visual-mode)
```
</details>

## VimGolf Solution
```sh
:%norm r*wC[<C-Q><C-R>"](#<C-Q><C-R>")<C-Q><Esc>gu%f r-;.<CR>ZZ
```
## KdbGolf Solution
```q
`:out 0:{"* [",x,"](#",ssr[lower x:("# "vs x)1;" ";"-"],")"}@'read0`:inp
```
# One_number_per_line
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
1,5c1,10
< - One number per line -
< -----------------------
< 2,3,5,7,
< 11,13,17,
< 19,23,29,
---
> 2
> 3
> 5
> 7
> 11
> 13
> 17
> 19
> 23
> 29
```
</details>

## VimGolf Solution
```sh
:%s/,/\r/g|g!/\d/d<CR>ZZ
```
## KdbGolf Solution
```q
`:out 0:-1_","vs raze -3#read0`:inp
```
# One_to_Ten
## Start file
```

```
## End file
```
1
2
3
4
5
6
7
8
9
10
```
## View Diff
<details><summary>Click me</summary>

```
1c1,10
< 
---
> 1
> 2
> 3
> 4
> 5
> 6
> 7
> 8
> 9
> 10
```
</details>

## VimGolf Solution
```sh
i1<Esc>Y9pvGg<C-A>ZZ
```
## KdbGolf Solution
```q
`:out 0:string 1+til 10
```
# Reordering_Lorem_Ipsum
## Start file
```
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua
Porttitor eget dolor morbi non arcu risus quis varius
Commodo ullamcorper a lacus vestibulum sed arcu non odio
Dui vivamus arcu felis bibendum ut tristique et egestas quis
Convallis tellus id interdum velit laoreet
Cursus euismod quis viverra nibh cras pulvinar
Eget mi proin sed libero enim sed faucibus turpis
Praesent elementum facilisis leo vel fringilla est ullamcorper eget nulla
Id donec ultrices tincidunt arcu
Varius duis at consectetur lorem donec massa sapien faucibus et
Sociis natoque penatibus et magnis dis parturient montes nascetur
Aliquam eleifend mi in nulla
Lectus arcu bibendum at varius vel pharetra vel turpis
Neque aliquam vestibulum morbi blandit cursus
Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim
Erat velit scelerisque in dictum
Et odio pellentesque diam volutpat commodo sed egestas
Egestas quis ipsum suspendisse ultrices gravida dictum
Phasellus faucibus scelerisque eleifend donec pretium vulputate
Non quam lacus suspendisse faucibus interdum posuere lorem
Sagittis nisl rhoncus mattis rhoncus
```
## End file
```
Neque aliquam vestibulum morbi blandit cursus
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua
Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim
Aliquam eleifend mi in nulla
Egestas quis ipsum suspendisse ultrices gravida dictum
Commodo ullamcorper a lacus vestibulum sed arcu non odio
Praesent elementum facilisis leo vel fringilla est ullamcorper eget nulla
Et odio pellentesque diam volutpat commodo sed egestas
Porttitor eget dolor morbi non arcu risus quis varius
Dui vivamus arcu felis bibendum ut tristique et egestas quis
Convallis tellus id interdum velit laoreet
Phasellus faucibus scelerisque eleifend donec pretium vulputate
Eget mi proin sed libero enim sed faucibus turpis
Id donec ultrices tincidunt arcu
Lectus arcu bibendum at varius vel pharetra vel turpis
Varius duis at consectetur lorem donec massa sapien faucibus et
Cursus euismod quis viverra nibh cras pulvinar
Sociis natoque penatibus et magnis dis parturient montes nascetur
Sagittis nisl rhoncus mattis rhoncus
Non quam lacus suspendisse faucibus interdum posuere lorem
Erat velit scelerisque in dictum
```
## View Diff
<details><summary>Click me</summary>

```
0a1
> Neque aliquam vestibulum morbi blandit cursus
2c3,5
< Porttitor eget dolor morbi non arcu risus quis varius
---
> Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim
> Aliquam eleifend mi in nulla
> Egestas quis ipsum suspendisse ultrices gravida dictum
3a7,9
> Praesent elementum facilisis leo vel fringilla est ullamcorper eget nulla
> Et odio pellentesque diam volutpat commodo sed egestas
> Porttitor eget dolor morbi non arcu risus quis varius
6c12
< Cursus euismod quis viverra nibh cras pulvinar
---
> Phasellus faucibus scelerisque eleifend donec pretium vulputate
8d13
< Praesent elementum facilisis leo vel fringilla est ullamcorper eget nulla
9a15
> Lectus arcu bibendum at varius vel pharetra vel turpis
10a17
> Cursus euismod quis viverra nibh cras pulvinar
12,20d18
< Aliquam eleifend mi in nulla
< Lectus arcu bibendum at varius vel pharetra vel turpis
< Neque aliquam vestibulum morbi blandit cursus
< Platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim
< Erat velit scelerisque in dictum
< Et odio pellentesque diam volutpat commodo sed egestas
< Egestas quis ipsum suspendisse ultrices gravida dictum
< Phasellus faucibus scelerisque eleifend donec pretium vulputate
< Non quam lacus suspendisse faucibus interdum posuere lorem
21a20,21
> Non quam lacus suspendisse faucibus interdum posuere lorem
> Erat velit scelerisque in dictum
```
</details>

## VimGolf Solution
```sh
:3m7|5m10|1m14|13,15m0|19m6|15m18|18,19m8|9,12m3|19m7|18m14|21m19|19m$<CR>ZZ
```
## KdbGolf Solution
```q

/ read0[`:inp]?/:read0`:out
`:tmp 0:@[read0`:inp;13 0 14 11 17 2 7 16 1 3 4 18 6 8 12 9 5 10 20 19 15]
```
# Resort_and_deup_a_CSV_list
## Start file
```
// Animals ordered by continent.
africa = ["hippo", "lion", "atlas bear", "gorilla", "hyena", "giraffe", "zebra"]
asia = ["tiger", "honey bear", "yak", "monkey", "panda"]
europe = ["flea", "brown bear", "ox", "fox", "rat", "deer"]
namerica = ["polar bear", "alligator", "cougar", "wolf", "bison", "reindeer", "raccoon"]
samerica = ["puma", "anaconda", "llama", "capybara", "spectacled bear", "penguin", "sloth"]
australia = ["crocodile", "SPIDERS!", "dingo", "SPIDERS!", "kangaroo", "spider bear", "playtpus", "koala", "SPIDERS!", "echidna"]
```
## End file
```
// Animals ordered by continent.
africa = ["atlas bear", "giraffe", "gorilla", "hippo", "hyena", "lion", "zebra"]
asia = ["honey bear", "monkey", "panda", "tiger", "yak"]
europe = ["brown bear", "deer", "flea", "fox", "ox", "rat"]
namerica = ["alligator", "bison", "cougar", "polar bear", "raccoon", "reindeer", "wolf"]
samerica = ["anaconda", "capybara", "llama", "penguin", "puma", "sloth", "spectacled bear"]
australia = ["SPIDERS!", "crocodile", "dingo", "echidna", "kangaroo", "koala", "playtpus", "spider bear"]
```
## View Diff
<details><summary>Click me</summary>

```
2,7c2,7
< africa = ["hippo", "lion", "atlas bear", "gorilla", "hyena", "giraffe", "zebra"]
< asia = ["tiger", "honey bear", "yak", "monkey", "panda"]
< europe = ["flea", "brown bear", "ox", "fox", "rat", "deer"]
< namerica = ["polar bear", "alligator", "cougar", "wolf", "bison", "reindeer", "raccoon"]
< samerica = ["puma", "anaconda", "llama", "capybara", "spectacled bear", "penguin", "sloth"]
< australia = ["crocodile", "SPIDERS!", "dingo", "SPIDERS!", "kangaroo", "spider bear", "playtpus", "koala", "SPIDERS!", "echidna"]
---
> africa = ["atlas bear", "giraffe", "gorilla", "hippo", "hyena", "lion", "zebra"]
> asia = ["honey bear", "monkey", "panda", "tiger", "yak"]
> europe = ["brown bear", "deer", "flea", "fox", "ox", "rat"]
> namerica = ["alligator", "bison", "cougar", "polar bear", "raccoon", "reindeer", "wolf"]
> samerica = ["anaconda", "capybara", "llama", "penguin", "puma", "sloth", "spectacled bear"]
> australia = ["SPIDERS!", "crocodile", "dingo", "echidna", "kangaroo", "koala", "playtpus", "spider bear"]
```
</details>

## VimGolf Solution
```sh
qq+f"Do<Esc>pr,:s/, /,\r/g<CR>v``:sor u<CR>gvJ$r]kgJq5@qZZ
```
## KdbGolf Solution
```q
/ No need to write your own JSON parser if we have one built in. — Péter Györök
`:out 0:@[read0`:inp;1+til 6;{"= "sv@["="vs x;1;{ssr[.j.j distinct asc .j.k x;",";", "]}]}]
```
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

## VimGolf Solution
```sh
5jYp<C-A>w11<C-A>GONew text.<CR><Esc>ZZ
```
## KdbGolf Solution
```q
`:out 0:raze@/[enlist@'read0`:inp;5 8;({@[2#x;1;{(-3_x),"7 11"}]};{("";"New text.";"")})]
```
# Two_pairs_of_cluster_of_letters_creates_word
## Start file
```
't', 'wo', 'pa','irs', 'o', 'f','clus','ter', 'o', 'f', 'lett', 'ers', 'crea', 'tes', 'wor','d'
```
## End file
```
two
pairs
of
cluster
of
letters
creates
word
```
## View Diff
<details><summary>Click me</summary>

```
1c1,8
< 't', 'wo', 'pa','irs', 'o', 'f','clus','ter', 'o', 'f', 'lett', 'ers', 'crea', 'tes', 'wor','d'
---
> two
> pairs
> of
> cluster
> of
> letters
> creates
> word
```
</details>

## VimGolf Solution
```sh
qq2f,a<CR><Esc>q6@q:%s/\W//g<CR>ZZ
```
## KdbGolf Solution
```q
`:out 0:raze@'2 cut","vs except[;" '"]read0[`:inp]0
```
# Words_in_parens
## Start file
```
one two
three
```
## End file
```
(one) (two)
(three)
```
## View Diff
<details><summary>Click me</summary>

```
1,2c1,2
< one two
< three
---
> (one) (two)
> (three)
```
</details>

## VimGolf Solution
```sh
qqce()<Esc>PWq2@qZZ
```
## KdbGolf Solution
```q
`:out 0:{" "sv{"(",x,")"}@'" "vs x}@'read0`:inp
```
# hello-world-vimgolf
## Start file
```
51
```
## End file
```
50
49
48
47
46
45
44
43
42
41
40
39
38
37
36
35
34
33
32
31
30
29
28
27
26
25
24
23
22
21
20
19
18
17
16
15
14
13
12
11
10
9
8
7
6
5
4
3
2
1
```
## View Diff
<details><summary>Click me</summary>

```
1c1,50
< 51
---
> 50
> 49
> 48
> 47
> 46
> 45
> 44
> 43
> 42
> 41
> 40
> 39
> 38
> 37
> 36
> 35
> 34
> 33
> 32
> 31
> 30
> 29
> 28
> 27
> 26
> 25
> 24
> 23
> 22
> 21
> 20
> 19
> 18
> 17
> 16
> 15
> 14
> 13
> 12
> 11
> 10
> 9
> 8
> 7
> 6
> 5
> 4
> 3
> 2
> 1
```
</details>

## VimGolf Solution
```sh
Y49PVGg<C-X>ZZ
```
## KdbGolf Solution
```q
`:out 0:string 50-til 50
```
# ninja_substitution
## Start file
```
Trying to careninjafully make a ninja challenge.
This ninjaninjachallenge is ninjadesigned to show a particularninja vim ninjafeature (here I am ninjastalling in order to ninjadoge a shorter ninjacounter-based ninjasolution, sorry for the ninjaheadhache) this is the end of my ninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjalninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaininjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjanninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaeninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninja.
The question is, will a wiser vimgolf ninja defeat the purpose of this challenge ?
```
## End file
```
Trying to carefully make a ninja challenge.
This challenge is designed to show a particular vim feature (here I am stalling in order to doge a shorter counter-based solution, sorry for the headhache) this is the end of my line.
The question is, will a wiser vimgolf ninja defeat the purpose of this challenge ?
```
## View Diff
<details><summary>Click me</summary>

```
1,2c1,2
< Trying to careninjafully make a ninja challenge.
< This ninjaninjachallenge is ninjadesigned to show a particularninja vim ninjafeature (here I am ninjastalling in order to ninjadoge a shorter ninjacounter-based ninjasolution, sorry for the ninjaheadhache) this is the end of my ninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjalninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaininjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjanninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaeninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninjaninja.
---
> Trying to carefully make a ninja challenge.
> This challenge is designed to show a particular vim feature (here I am stalling in order to doge a shorter counter-based solution, sorry for the headhache) this is the end of my line.
```
</details>

## VimGolf Solution
```sh
:s/ninja/<CR>j:<Up>/g<CR>ZZ
```
## KdbGolf Solution
```q
`:out 0:@/[read0`:inp;0 1;{ssr[y;"ninja",x;"",x]}@'("";"f")]
```
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
# simple_format_3
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
1,10c1,10
< one:1
< two:2
< three:3
< four:4
< five:5
< six:6
< seven:7
< eight:8
< nine:9
< ten:10
---
>  1:        "one";
>  2:        "two";
>  3:      "three";
>  4:       "four";
>  5:       "five";
>  6:        "six";
>  7:      "seven";
>  8:      "eight";
>  9:       "nine";
> 10:        "ten";
```
</details>

## VimGolf Solution
```sh
:%ri12|%s/\( \+\)\(.*\):\(.*\)/\3:\1 "\2";<CR>k<C-Q>ggI <Esc>GWi <Esc>ZZ
```
## KdbGolf Solution
```q
`:out 0:{raze@/[":"vs x;i;({-3#" ",x,":"};{-14#(8#""),"\"",x,"\";"})]i:1 0}@'read0`:inp
```
