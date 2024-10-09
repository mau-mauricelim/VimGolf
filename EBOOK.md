# VimGolf
## Table of contents
- [applying_same_text_modification_in_several_lines](#applying_same_text_modification_in_several_lines)
- [basic_renumbering](#basic_renumbering)
- [box_it](#box_it)
- [com_m_a_trouble](#com_m_a_trouble)
- [contribute_to_keyboard_mashing](#contribute_to_keyboard_mashing)
- [cool_or_not](#cool_or_not)
- [fill_in_the_chess_board](#fill_in_the_chess_board)
- [fix_timezone_format](#fix_timezone_format)
- [i_forgot_quotes](#i_forgot_quotes)
- [increment_each_number](#increment_each_number)
- [just_the_middle](#just_the_middle)
- [markdown_blog_editing](#markdown_blog_editing)
- [one_number_per_line](#one_number_per_line)
- [one_to_ten](#one_to_ten)
- [poorly_indented_python_comments](#poorly_indented_python_comments)
- [reordering_lorem_ipsum](#reordering_lorem_ipsum)
- [resort_and_deup_a_csv_list](#resort_and_deup_a_csv_list)
- [search_different_sql_column_with_similar_where_clause](#search_different_sql_column_with_similar_where_clause)
- [simple_practical_and_common](#simple_practical_and_common)
- [simple_text_editing_with_vim](#simple_text_editing_with_vim)
- [two_pairs_of_cluster_of_letters_creates_word](#two_pairs_of_cluster_of_letters_creates_word)
- [words_in_parens](#words_in_parens)
- [hello-world-vimgolf](#hello-world-vimgolf)
- [ninja_substitution](#ninja_substitution)
- [remove_lines_containing_the_word_reader](#remove_lines_containing_the_word_reader)
- [simple_format_3](#simple_format_3)
- [played_challenges](#played_challenges)
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
`:out 0:{x _x?")"}@'36_'read0`:inp
```
# Basic_renumbering
## Start file
```
10 PRINT "The actual"
15 PRINT "code doesn't"
16 PRINT "really matter."
20 PRINT "Just take"
25 PRINT "care of"
30 PRINT "the numbers."
```
## End file
```
10 PRINT "The actual"
20 PRINT "code doesn't"
30 PRINT "really matter."
40 PRINT "Just take"
50 PRINT "care of"
60 PRINT "the numbers."
```
## View Diff
<details><summary>Click me</summary>

```
2,6c2,6
< 15 PRINT "code doesn't"
< 16 PRINT "really matter."
< 20 PRINT "Just take"
< 25 PRINT "care of"
< 30 PRINT "the numbers."
---
> 20 PRINT "code doesn't"
> 30 PRINT "really matter."
> 40 PRINT "Just take"
> 50 PRINT "care of"
> 60 PRINT "the numbers."
```
</details>

## VimGolf Solution
```sh
<C-Q>Glr0<C-Q>Gg<C-A>ZZ
```
## KdbGolf Solution
```q
`out 0:string[10*1+til 6],'2_'read0`:inp
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
# Fix_timezone_format
## Start file
```
2024-08-03 14:50:29;582;uby
2024-08-12 08:11:13;7557;ca
2024-08-12 08:15:44;3863;aucou
2024-08-12 08:15:46;3831;geon
2024-08-12 08:32:16;7685;schof
2024-08-12 08:33:04;4678;ggoun
2024-08-12 08:34:41;4868;rslan
2024-08-12 08:36:15;1712;bonde
2024-08-12 08:37:39;9461;cchi
2024-08-12 08:39:47;7814;igui
2024-08-12 09:04:48;4686;im
2024-08-12 09:07:23;9746;ualid
2024-08-12 09:08:28;7814;igui
2024-08-12 09:18:13;7814;igui
2024-08-12 09:20:47;3488;asset
2024-08-12 09:21:08;6027;risse
2024-08-12 09:21:52;7593;ejo
2024-08-12 09:26:32;1453;this
2024-08-12 09:32:36;7456;emill
2024-08-12 09:36:04;653;mquet
2024-08-12 09:40:42;5216;ysal
2024-08-12 09:48:15;3897;le
2024-08-12 09:50:51;3755;urgeo
2024-08-12 09:51:48;9055;rve
2024-08-12 09:54:05;7477;ra2
2024-08-12 09:54:41;9690;ekdas
2024-08-12 09:55:28;9306;-rese
2024-08-12 09:55:30;8965;igoux
2024-08-12 09:57:09;909;cundo
2024-08-12 09:58:44;7632;arame
2024-08-12 10:02:57;3815;harel
2024-08-12 10:07:59;4481;omano
2024-08-12 10:11:13;7456;emill
2024-08-12 10:15:59;7653;urteb
2024-08-12 10:17:40;4720;ichar
2024-08-12 10:18:32;4683;iebau
2024-08-12 10:20:13;3819;bonde
2024-08-12 10:21:16;3854;eninc
2024-08-12 10:25:19;7848;umanz
2024-08-12 10:25:45;857;jmond
2024-08-12 10:25:46;4683;iebau
```
## End file
```
2024-08-03T14:50:29Z;582;uby
2024-08-12T08:11:13Z;7557;ca
2024-08-12T08:15:44Z;3863;aucou
2024-08-12T08:15:46Z;3831;geon
2024-08-12T08:32:16Z;7685;schof
2024-08-12T08:33:04Z;4678;ggoun
2024-08-12T08:34:41Z;4868;rslan
2024-08-12T08:36:15Z;1712;bonde
2024-08-12T08:37:39Z;9461;cchi
2024-08-12T08:39:47Z;7814;igui
2024-08-12T09:04:48Z;4686;im
2024-08-12T09:07:23Z;9746;ualid
2024-08-12T09:08:28Z;7814;igui
2024-08-12T09:18:13Z;7814;igui
2024-08-12T09:20:47Z;3488;asset
2024-08-12T09:21:08Z;6027;risse
2024-08-12T09:21:52Z;7593;ejo
2024-08-12T09:26:32Z;1453;this
2024-08-12T09:32:36Z;7456;emill
2024-08-12T09:36:04Z;653;mquet
2024-08-12T09:40:42Z;5216;ysal
2024-08-12T09:48:15Z;3897;le
2024-08-12T09:50:51Z;3755;urgeo
2024-08-12T09:51:48Z;9055;rve
2024-08-12T09:54:05Z;7477;ra2
2024-08-12T09:54:41Z;9690;ekdas
2024-08-12T09:55:28Z;9306;-rese
2024-08-12T09:55:30Z;8965;igoux
2024-08-12T09:57:09Z;909;cundo
2024-08-12T09:58:44Z;7632;arame
2024-08-12T10:02:57Z;3815;harel
2024-08-12T10:07:59Z;4481;omano
2024-08-12T10:11:13Z;7456;emill
2024-08-12T10:15:59Z;7653;urteb
2024-08-12T10:17:40Z;4720;ichar
2024-08-12T10:18:32Z;4683;iebau
2024-08-12T10:20:13Z;3819;bonde
2024-08-12T10:21:16Z;3854;eninc
2024-08-12T10:25:19Z;7848;umanz
2024-08-12T10:25:45Z;857;jmond
2024-08-12T10:25:46Z;4683;iebau
```
## View Diff
<details><summary>Click me</summary>

```
1,41c1,41
< 2024-08-03 14:50:29;582;uby
< 2024-08-12 08:11:13;7557;ca
< 2024-08-12 08:15:44;3863;aucou
< 2024-08-12 08:15:46;3831;geon
< 2024-08-12 08:32:16;7685;schof
< 2024-08-12 08:33:04;4678;ggoun
< 2024-08-12 08:34:41;4868;rslan
< 2024-08-12 08:36:15;1712;bonde
< 2024-08-12 08:37:39;9461;cchi
< 2024-08-12 08:39:47;7814;igui
< 2024-08-12 09:04:48;4686;im
< 2024-08-12 09:07:23;9746;ualid
< 2024-08-12 09:08:28;7814;igui
< 2024-08-12 09:18:13;7814;igui
< 2024-08-12 09:20:47;3488;asset
< 2024-08-12 09:21:08;6027;risse
< 2024-08-12 09:21:52;7593;ejo
< 2024-08-12 09:26:32;1453;this
< 2024-08-12 09:32:36;7456;emill
< 2024-08-12 09:36:04;653;mquet
< 2024-08-12 09:40:42;5216;ysal
< 2024-08-12 09:48:15;3897;le
< 2024-08-12 09:50:51;3755;urgeo
< 2024-08-12 09:51:48;9055;rve
< 2024-08-12 09:54:05;7477;ra2
< 2024-08-12 09:54:41;9690;ekdas
< 2024-08-12 09:55:28;9306;-rese
< 2024-08-12 09:55:30;8965;igoux
< 2024-08-12 09:57:09;909;cundo
< 2024-08-12 09:58:44;7632;arame
< 2024-08-12 10:02:57;3815;harel
< 2024-08-12 10:07:59;4481;omano
< 2024-08-12 10:11:13;7456;emill
< 2024-08-12 10:15:59;7653;urteb
< 2024-08-12 10:17:40;4720;ichar
< 2024-08-12 10:18:32;4683;iebau
< 2024-08-12 10:20:13;3819;bonde
< 2024-08-12 10:21:16;3854;eninc
< 2024-08-12 10:25:19;7848;umanz
< 2024-08-12 10:25:45;857;jmond
< 2024-08-12 10:25:46;4683;iebau
---
> 2024-08-03T14:50:29Z;582;uby
> 2024-08-12T08:11:13Z;7557;ca
> 2024-08-12T08:15:44Z;3863;aucou
> 2024-08-12T08:15:46Z;3831;geon
> 2024-08-12T08:32:16Z;7685;schof
> 2024-08-12T08:33:04Z;4678;ggoun
> 2024-08-12T08:34:41Z;4868;rslan
> 2024-08-12T08:36:15Z;1712;bonde
> 2024-08-12T08:37:39Z;9461;cchi
> 2024-08-12T08:39:47Z;7814;igui
> 2024-08-12T09:04:48Z;4686;im
> 2024-08-12T09:07:23Z;9746;ualid
> 2024-08-12T09:08:28Z;7814;igui
> 2024-08-12T09:18:13Z;7814;igui
> 2024-08-12T09:20:47Z;3488;asset
> 2024-08-12T09:21:08Z;6027;risse
> 2024-08-12T09:21:52Z;7593;ejo
> 2024-08-12T09:26:32Z;1453;this
> 2024-08-12T09:32:36Z;7456;emill
> 2024-08-12T09:36:04Z;653;mquet
> 2024-08-12T09:40:42Z;5216;ysal
> 2024-08-12T09:48:15Z;3897;le
> 2024-08-12T09:50:51Z;3755;urgeo
> 2024-08-12T09:51:48Z;9055;rve
> 2024-08-12T09:54:05Z;7477;ra2
> 2024-08-12T09:54:41Z;9690;ekdas
> 2024-08-12T09:55:28Z;9306;-rese
> 2024-08-12T09:55:30Z;8965;igoux
> 2024-08-12T09:57:09Z;909;cundo
> 2024-08-12T09:58:44Z;7632;arame
> 2024-08-12T10:02:57Z;3815;harel
> 2024-08-12T10:07:59Z;4481;omano
> 2024-08-12T10:11:13Z;7456;emill
> 2024-08-12T10:15:59Z;7653;urteb
> 2024-08-12T10:17:40Z;4720;ichar
> 2024-08-12T10:18:32Z;4683;iebau
> 2024-08-12T10:20:13Z;3819;bonde
> 2024-08-12T10:21:16Z;3854;eninc
> 2024-08-12T10:25:19Z;7848;umanz
> 2024-08-12T10:25:45Z;857;jmond
> 2024-08-12T10:25:46Z;4683;iebau
```
</details>

## VimGolf Solution
```sh
/ <CR><C-Q>g&t;sTZ<Esc>PZZ
```
## KdbGolf Solution
```q
`:out 0:ssr/[;(" ";";[0-9]");"T",ssr[;";";"Z;"]]@'read0`:inp
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
# Poorly_indented_Python_comments
## Start file
```
      # Working with enumerations in Python #

from enum import Enum

class Shake(Enum):
    VANILLA = 7
    CHOCOLATE = 4
    COOKIES = 9
    MINT = 3

print(type(Shake.MINT))   #   <enum 'Shake'> 

print(Shake.CHOCOLATE.name)               #    CHOCOLATE
print(Shake.CHOCOLATE.value)                   #     4

print(repr(Shake['COOKIES']))              #  <Shake.COOKIES: 9>

Animal = Enum('Animal', 'ANT BEE CAT DOG')

A = list(Animal); print(A)
# [<Animal.ANT: 1>, <Animal.BEE: 2>, <Animal.CAT: 3>, <Animal.DOG: 4>]
```
## End file
```
      # Working with enumerations in Python #

from enum import Enum

class Shake(Enum):
    VANILLA = 7
    CHOCOLATE = 4
    COOKIES = 9
    MINT = 3

print(type(Shake.MINT))         # <enum 'Shake'> 

print(Shake.CHOCOLATE.name)     # CHOCOLATE
print(Shake.CHOCOLATE.value)    # 4

print(repr(Shake['COOKIES']))   # <Shake.COOKIES: 9>

Animal = Enum('Animal', 'ANT BEE CAT DOG')

A = list(Animal); print(A)
# [<Animal.ANT: 1>, <Animal.BEE: 2>, <Animal.CAT: 3>, <Animal.DOG: 4>]
```
## View Diff
<details><summary>Click me</summary>

```
11c11
< print(type(Shake.MINT))   #   <enum 'Shake'> 
---
> print(type(Shake.MINT))         # <enum 'Shake'> 
13,14c13,14
< print(Shake.CHOCOLATE.name)               #    CHOCOLATE
< print(Shake.CHOCOLATE.value)                   #     4
---
> print(Shake.CHOCOLATE.name)     # CHOCOLATE
> print(Shake.CHOCOLATE.value)    # 4
16c16
< print(repr(Shake['COOKIES']))              #  <Shake.COOKIES: 9>
---
> print(repr(Shake['COOKIES']))   # <Shake.COOKIES: 9>
```
</details>

## VimGolf Solution
```sh
$*X8P<C-Q>4n3<2 .ZZ
Mf#7i <Esc><C-Q>5j2<ll.ZZ
# The `.` register stores the last text inserted
AX9Pd32|3 dwn<Esc>u*4@.ZZ
```
## KdbGolf Solution
```q
`:out 0:@[read0`:inp;9+1 3 4 6;{"#"sv@["#"vs ssr[;"  ";" "]/[x];0;{32#x,9#""}]}]
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
# Search_different_SQL_column_with_similar_where_clause
## Start file
```
SELECT * FROM numbers WHERE local_number IN (
        "058307327",
        "058307328",
        "058307329"
)
```
## End file
```
SELECT * FROM numbers WHERE int_number IN (
        35958307327,
        35958307328,
        35958307329
)
```
## View Diff
<details><summary>Click me</summary>

```
1,4c1,4
< SELECT * FROM numbers WHERE local_number IN (
<         "058307327",
<         "058307328",
<         "058307329"
---
> SELECT * FROM numbers WHERE int_number IN (
>         35958307327,
>         35958307328,
>         35958307329
```
</details>

## VimGolf Solution
```sh
/"<CR><C-Q>g&359<C-A>g&5B5sint<Esc>ZZ
flc;int<Esc>/"<CR><C-Q>g&s359<Esc>g&ZZ
f_cbint<Esc><CR><C-Q>2jxw.gvs359<Esc>ZZ
```
## KdbGolf Solution
```q
`:out 0:ssr/[;("local";"\"";" 0");("int";"";" 359")]@'read0`:inp
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
# Simple_text_editing_with_Vim
## Start file
```
Make the pairs of lines match up by making each second line same as first:

# Appending text:
The name "Vim" is an acronym for "Vi IMproved"
The name "Vim" is an acronym for

# Editing text:
Vim is a text editor originally released by Bram Moolenaar in 1991 for the Amiga
Trivia: Vim is a text editor released by Bram Moolenaar in 1991 for the Amiga

# Deleting text:
Vim has a vi compatibility mode
Vim has a vi compatibility mode but when not in this mode Vim has many enhancements over vi
```
## End file
```
Make the pairs of lines match up by making each second line same as first:

# Appending text:
The name "Vim" is an acronym for "Vi IMproved"
The name "Vim" is an acronym for "Vi IMproved"

# Editing text:
Vim is a text editor originally released by Bram Moolenaar in 1991 for the Amiga
Vim is a text editor originally released by Bram Moolenaar in 1991 for the Amiga

# Deleting text:
Vim has a vi compatibility mode
Vim has a vi compatibility mode
```
## View Diff
<details><summary>Click me</summary>

```
5c5
< The name "Vim" is an acronym for
---
> The name "Vim" is an acronym for "Vi IMproved"
9c9
< Trivia: Vim is a text editor released by Bram Moolenaar in 1991 for the Amiga
---
> Vim is a text editor originally released by Bram Moolenaar in 1991 for the Amiga
13c13
< Vim has a vi compatibility mode but when not in this mode Vim has many enhancements over vi
---
> Vim has a vi compatibility mode
```
</details>

## VimGolf Solution
```sh
: '
https://stackoverflow.com/questions/6679388/challenge-simple-text-editing-with-vim-at-vimgolf-how-does-the-1-solution-wo

> help copy
:[range]co[py] {address}                                :co :copy
                      Copy the lines given by [range] to below the line
                      given by {address}.

                                                      :t
:t                      Synonym for copy.

> help {address}
Line numbers may be specified with:             :range {address}
      {number}        an absolute line number  E1247
      .               the current line                          :.
      $               the last line in the file                 :$
      %               equal to 1,$ (the entire file)            :%
      't              position of mark t (lowercase)            :'
      'T              position of mark T (uppercase); when the mark is in
                      another file it cannot be used in a range
      /{pattern}[/]   the next line where {pattern} matches     :/
                              also see :range-pattern below
      ?{pattern}[?]   the previous line where {pattern} matches :?
                              also see :range-pattern below
      \/              the next line where the previously used search
                      pattern matches
      \?              the previous line where the previously used search
                      pattern matches
      \&              the next line where the previously used substitute
                      pattern matches

> help :bar
                                                      :bar :\bar
'|' can be used to separate commands, so you can give multiple commands in one
line.  If you want to use '|' in an argument, precede it with '\'.

> help :,
The default line specifier for most commands is the cursor position, but the
commands ":write" and ":global" have the whole file (1,$) as default.

If more line specifiers are given than required for the command, the first
one(s) will be ignored

`.+1` is equivalent to `+`
'
:g/V/t.|+d<CR>ZZ
```
## KdbGolf Solution
```q
`out 0:{@[x;i+1;:;x i:3 7 11]}read0`:inp
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
# Played_Challenges
## Start file
```
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en-us">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta http-equiv="Cache-control" content="no-cache" />
<meta http-equiv="Pragma" content="no-cache" />
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="/favicon-96x96.png">
<title>VimGolf - real Vim ninjas count every keystroke!</title>
<link rel="stylesheet" media="screen" href="/assets/application-184d466783787ffec00599fa72eb1ffe7c420c86624c38d337701d118124e30a.css" />
<script src="/assets/application-7941238973273d25b4187dcef435ea60c803cc1a3a1c475bbfa0615de205ce1e.js"></script>
<link rel="alternate" type="application/rss+xml" title="Latest VimGolf challenges" href="https://feeds.vimgolf.com/latest-challenges" />
<meta name="csrf-param" content="authenticity_token" />
</head>
<body onload="prettyPrint()">
<div id="header" class="container_12 clearfix">
<div id="logo">
<div><a href="/"><img src="/assets/vim_golf_logo-b6604c97f67ed10c1cc5fd8badf7d8fd4fccdd906537c9b898ea528ce48adf88.png" /> VimGolf</a></div>
</div>
<div id="navigation">
<ul id="nav">
<li><a href="/login">Sign in</a></li>
</ul>
</div>
</div>
<div id="about" class="container_12 clearfix">
<div id="about" class="grid_7">
<h3 style="margin:0.5em 0 0.5em 0">Real Vim ninjas count <b>every</b> keystroke - do you?</h3>
<h6>Pick a challenge, fire up Vim, and show us what you got.</h6>
<p><a href="/about">Changelog, Rules &amp; FAQ</a>, updates: <a href="https://twitter.com/vimgolf">@vimgolf</a>, <a href="http://feeds.vimgolf.com/latest-challenges">RSS</a>.</p>
</div>
<div id="instructions" class="grid_5">
<pre class="terminal">
<span class="shell">Your VimGolf key: <a href="/login">please sign in</a></span>

<span class="shell">$</span> gem install vimgolf
<span class="shell">$</span> vimgolf setup
<span class="shell">$</span> vimgolf put [challenge ID]
</pre>
</div>
</div>
<div id="content" class="container_12 clearfix">
<div class="grid_7">
<h3><b>Played Challenges</b></h3>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/9v0066dd4c360000000003c9">Markdown Blog Editing</a> - 159 entries
</h5>
<p>Convert the given link text in start file to a markdown link list.</p>
</div>
<ul>
<li>Best score: <b>30</b></li>
<li>Best player score: <b>36</b></li>
<li>Position: <b>#12 / 42</b></li>
<li>Number of attempts: <b><a href="/challenges/9v0066dd4c360000000003c9/user/mau-mauricelim">3</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/9v0066d89856000000000388">Fix timezone format</a> - 159 entries
</h5>
<p>Add the missing T and Z in the datetime field.
There should be a T instead of the space, and a Z at the end of the datetime.
`2024-08-31 18:32:00;` -&gt; `2024-08-31T18:32:00Z;`</p>
</div>
<ul>
<li>Best score: <b>15</b></li>
<li>Best player score: <b>15</b></li>
<li>Position: <b>#10 / 53</b></li>
<li>Number of attempts: <b><a href="/challenges/9v0066d89856000000000388/user/mau-mauricelim">5</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/9v0066d8266e000000000367">Search different SQL column with similar where clause</a> - 93 entries
</h5>
<p>Replace a column in the where clause and convert all numbers from text to numeric, by replacing the leading 0 with the code 359.</p>
</div>
<ul>
<li>Best score: <b>22</b></li>
<li>Best player score: <b>22</b></li>
<li>Position: <b>#6 / 32</b></li>
<li>Number of attempts: <b><a href="/challenges/9v0066d8266e000000000367/user/mau-mauricelim">6</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/9v00628a9b2f000000000220">Poorly indented Python comments</a> - 1313 entries
</h5>
<p>Fix the alignment of some Python comments as quickly as possible.</p>
</div>
<ul>
<li>Best score: <b>15</b></li>
<li>Best player score: <b>15</b></li>
<li>Position: <b>#55 / 220</b></li>
<li>Number of attempts: <b><a href="/challenges/9v00628a9b2f000000000220/user/mau-mauricelim">11</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/9v0061478032000000000212">hello-world-vimgolf</a> - 2484 entries
</h5>
<p>Simple number generation</p>
</div>
<ul>
<li>Best score: <b>10</b></li>
<li>Best player score: <b>10</b></li>
<li>Position: <b>#341 / 703</b></li>
<li>Number of attempts: <b><a href="/challenges/9v0061478032000000000212/user/mau-mauricelim">3</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/9v00612c165c000000000211">Contribute to keyboard mashing</a> - 890 entries
</h5>
<p>Speak in tongues</p>
</div>
<ul>
<li>Best score: <b>17</b></li>
<li>Best player score: <b>18</b></li>
<li>Position: <b>#116 / 270</b></li>
<li>Number of attempts: <b><a href="/challenges/9v00612c165c000000000211/user/mau-mauricelim">3</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/9v00612800cb000000000210">Reordering Lorem Ipsum</a> - 290 entries
</h5>
<p>Who even sorted this?</p>
</div>
<ul>
<li>Best score: <b>13</b></li>
<li>Best player score: <b>73</b></li>
<li>Position: <b>#41 / 66</b></li>
<li>Number of attempts: <b><a href="/challenges/9v00612800cb000000000210/user/mau-mauricelim">3</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/9v006115f6d000000000020c">Fill in the chess board</a> - 953 entries
</h5>
<p>Fill in the name of each square using its file (a-h) and rank (1-8).</p>
</div>
<ul>
<li>Best score: <b>19</b></li>
<li>Best player score: <b>25</b></li>
<li>Position: <b>#63 / 182</b></li>
<li>Number of attempts: <b><a href="/challenges/9v006115f6d000000000020c/user/mau-mauricelim">6</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/55b18bbea9c2c30d04000001">Simple, Practical, and Common</a> - 33569 entries
</h5>
<p>Simple things we do all the time should be able to be done with very few keystrokes, but sometimes I find something I need to do makes me go, &quot;There MUST be a better way.&quot;
This challenge is just a simple movement and entering text at a certain place.</p>
</div>
<ul>
<li>Best score: <b>22</b></li>
<li>Best player score: <b>24</b></li>
<li>Position: <b>#3116 / 7404</b></li>
<li>Number of attempts: <b><a href="/challenges/55b18bbea9c2c30d04000001/user/mau-mauricelim">3</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/56fb2e75ccffcc0009026473">One number per line</a> - 18709 entries
</h5>
<p>Just give me the numbers.</p>
</div>
<ul>
<li>Best score: <b>14</b></li>
<li>Best player score: <b>21</b></li>
<li>Position: <b>#2581 / 3856</b></li>
<li>Number of attempts: <b><a href="/challenges/56fb2e75ccffcc0009026473/user/mau-mauricelim">3</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/5bbb82f969a25f0009541350">Applying same text modification in several lines</a> - 2859 entries
</h5>
<p>Remove identical text at the beginning of several lines and the closing parenthesis.</p>
</div>
<ul>
<li>Best score: <b>12</b></li>
<li>Best player score: <b>15</b></li>
<li>Position: <b>#540 / 845</b></li>
<li>Number of attempts: <b><a href="/challenges/5bbb82f969a25f0009541350/user/mau-mauricelim">4</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/5c264e64e8c64916d7fca650">remove lines containing the word &quot;reader&quot;</a> - 3573 entries
</h5>
<p>easy stuff</p>
</div>
<ul>
<li>Best score: <b>9</b></li>
<li>Best player score: <b>10</b></li>
<li>Position: <b>#857 / 1157</b></li>
<li>Number of attempts: <b><a href="/challenges/5c264e64e8c64916d7fca650/user/mau-mauricelim">2</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/5ba020f91abf2d000951055c">Com(m)a Trouble</a> - 3780 entries
</h5>
<p>Someone was real stupid when placing his commas. Can you fix it?</p>
</div>
<ul>
<li>Best score: <b>12</b></li>
<li>Best player score: <b>15</b></li>
<li>Position: <b>#449 / 855</b></li>
<li>Number of attempts: <b><a href="/challenges/5ba020f91abf2d000951055c/user/mau-mauricelim">4</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/5c742a5a50bdf70006d43280">Box it</a> - 7898 entries
</h5>
<p>Create a box around a line.</p>
</div>
<ul>
<li>Best score: <b>21</b></li>
<li>Best player score: <b>25</b></li>
<li>Position: <b>#1043 / 1873</b></li>
<li>Number of attempts: <b><a href="/challenges/5c742a5a50bdf70006d43280/user/mau-mauricelim">5</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/5c82a157c82f3900064c82d7">Cool or not?</a> - 829 entries
</h5>
<p>abc trying to be cool or not...</p>
</div>
<ul>
<li>Best score: <b>15</b></li>
<li>Best player score: <b>20</b></li>
<li>Position: <b>#166 / 230</b></li>
<li>Number of attempts: <b><a href="/challenges/5c82a157c82f3900064c82d7/user/mau-mauricelim">2</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/5c93945c9caf21000ca842f7">Two pairs of cluster of letters creates word</a> - 749 entries
</h5>
<p>Clean and group.</p>
</div>
<ul>
<li>Best score: <b>17</b></li>
<li>Best player score: <b>24</b></li>
<li>Position: <b>#142 / 178</b></li>
<li>Number of attempts: <b><a href="/challenges/5c93945c9caf21000ca842f7/user/mau-mauricelim">2</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/54862fbb3f90ac0002904cf5">Just the middle</a> - 11423 entries
</h5>
<p>Delete the instructions at the top and bottom.</p>
</div>
<ul>
<li>Best score: <b>7</b></li>
<li>Best player score: <b>8</b></li>
<li>Position: <b>#3200 / 4185</b></li>
<li>Number of attempts: <b><a href="/challenges/54862fbb3f90ac0002904cf5/user/mau-mauricelim">3</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/54595b13128576000257a3c1">Basic renumbering</a> - 5644 entries
</h5>
<p>Renumbering Basic.</p>
</div>
<ul>
<li>Best score: <b>11</b></li>
<li>Best player score: <b>11</b></li>
<li>Position: <b>#279 / 1262</b></li>
<li>Number of attempts: <b><a href="/challenges/54595b13128576000257a3c1/user/mau-mauricelim">1</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/5cb9d07d716c1b0009f69a40">ninja substitution</a> - 1420 entries
</h5>
<p>How can you reuse a previous substitution ?</p>
</div>
<ul>
<li>Best score: <b>14</b></li>
<li>Best player score: <b>18</b></li>
<li>Position: <b>#193 / 267</b></li>
<li>Number of attempts: <b><a href="/challenges/5cb9d07d716c1b0009f69a40/user/mau-mauricelim">2</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/5c4d042acfafb4000c9f06c2">One to Ten</a> - 2209 entries
</h5>
<p>Generate the sequence of numbers from 1 to 10, one number per line.
Inspired by this Reddit thread: https://redd.it/ak4it2</p>
</div>
<ul>
<li>Best score: <b>12</b></li>
<li>Best player score: <b>12</b></li>
<li>Position: <b>#365 / 669</b></li>
<li>Number of attempts: <b><a href="/challenges/5c4d042acfafb4000c9f06c2/user/mau-mauricelim">1</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/5c645526fa8ae200061757ad">Increment each number</a> - 1023 entries
</h5>
<p>Increment each number individually by one</p>
</div>
<ul>
<li>Best score: <b>15</b></li>
<li>Best player score: <b>21</b></li>
<li>Position: <b>#183 / 248</b></li>
<li>Number of attempts: <b><a href="/challenges/5c645526fa8ae200061757ad/user/mau-mauricelim">3</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/5bff6e560d5dc0000ca3485b">simple format (3)</a> - 86 entries
</h5>
<p>reverse two column values!</p>
</div>
<ul>
<li>Best score: <b>34</b></li>
<li>Best player score: <b>57</b></li>
<li>Position: <b>#20 / 24</b></li>
<li>Number of attempts: <b><a href="/challenges/5bff6e560d5dc0000ca3485b/user/mau-mauricelim">4</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/5462e3f41198b80002512673">I forgot quotes</a> - 15967 entries
</h5>
<p>Oops.</p>
</div>
<ul>
<li>Best score: <b>10</b></li>
<li>Best player score: <b>15</b></li>
<li>Position: <b>#2386 / 4174</b></li>
<li>Number of attempts: <b><a href="/challenges/5462e3f41198b80002512673/user/mau-mauricelim">3</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/5192f96ad8df110002000002">Words in parens</a> - 12925 entries
</h5>
<p>We should all ace this, right?</p>
</div>
<ul>
<li>Best score: <b>13</b></li>
<li>Best player score: <b>14</b></li>
<li>Position: <b>#1176 / 3959</b></li>
<li>Number of attempts: <b><a href="/challenges/5192f96ad8df110002000002/user/mau-mauricelim">5</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/5cace3ba888961000986ec8d">Resort and deup a CSV list</a> - 167 entries
</h5>
<p>I&#39;m always adding items to a sorted list. There has to be a better way dedup and resort the lists.
There are multiple lists with varying lengths to discourage manual sorting.
Also Australia&#39;s animals are weird.</p>
</div>
<ul>
<li>Best score: <b>44</b></li>
<li>Best player score: <b>48</b></li>
<li>Position: <b>#24 / 43</b></li>
<li>Number of attempts: <b><a href="/challenges/5cace3ba888961000986ec8d/user/mau-mauricelim">6</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/4d1a34ccfa85f32065000004">Simple text editing with Vim</a> - 12655 entries
</h5>
<p>Make the pairs of lines match up by making each second line same as first</p>
</div>
<ul>
<li>Best score: <b>13</b></li>
<li>Best player score: <b>13</b></li>
<li>Position: <b>#725 / 3659</b></li>
<li>Number of attempts: <b><a href="/challenges/4d1a34ccfa85f32065000004/user/mau-mauricelim">2</a></b></li>
</ul>
</div>
</div>
<div class="grid_5">
<div class="notice clearfix">
<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwAQMAAABtzGvEAAAABlBMVEUAAAAk
B57C1X93AAAAAnRSTlMA/1uRIrUAAABCSURBVHicY/rDAAT2TAxggJdiYbD/
w3CQGJUM/I3sHwgogVIf638KEKeSaAroSBYifcR/gPkDUT5iflj/U/4AESoB
1VwPXpT5l9sAAAAASUVORK5CYII=
" class="user">
<h6 style="margin-bottom:0">
<b>mau-mauricelim</b><br/>Github: <a href="https://www.github.com/mau-mauricelim" class="twitter-link" target="_new">@mau-mauricelim</a>
</h6>
<p style="margin-bottom:0"><em></em></p>
</div>
<h2 style="padding:0em;margin:1em 1.5em 0.5em 1.5em">entered into <b class="stat">26</b> challenges</h2>
<h2 style="padding:0em;margin:0.5em 1.5em">contributed <b class="stat">0</b> challenges</h2>
</div>
</div>
<div id="footer" class="container_12 clearfix">
<div id="copy">
<a href="/about">Changelog, Rules &amp; FAQ</a>, &nbsp;&nbsp;
CLI Version: <b><a href="https://github.com/igrigorik/vimgolf">0.5.0</a></b>, &nbsp;&nbsp;
<a href="https://github.com/igrigorik/vimgolf/">Contribute on GitHub</a>
</div>
</div>
<script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-71196-5']);
    _gaq.push(['_trackPageview']);

    (function() {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
  </script>
</body>
</html>
```
## End file
```
|Played Challenges|Entries|Best score|Best player score|Position|Number of attempts|
|-|-|-|-|-|-|
|[Markdown Blog Editing](https://www.vimgolf.com/challenges/9v0066dd4c360000000003c9)|159|30|36|#12 / 42|[3](https://www.vimgolf.com/challenges/9v0066dd4c360000000003c9/user/mau-mauricelim)|
|[Fix timezone format](https://www.vimgolf.com/challenges/9v0066d89856000000000388)|159|15|15|#10 / 53|[5](https://www.vimgolf.com/challenges/9v0066d89856000000000388/user/mau-mauricelim)|
|[Search different SQL column with similar where clause](https://www.vimgolf.com/challenges/9v0066d8266e000000000367)|93|22|22|#6 / 32|[6](https://www.vimgolf.com/challenges/9v0066d8266e000000000367/user/mau-mauricelim)|
|[Poorly indented Python comments](https://www.vimgolf.com/challenges/9v00628a9b2f000000000220)|1313|15|15|#55 / 220|[11](https://www.vimgolf.com/challenges/9v00628a9b2f000000000220/user/mau-mauricelim)|
|[hello-world-vimgolf](https://www.vimgolf.com/challenges/9v0061478032000000000212)|2484|10|10|#341 / 703|[3](https://www.vimgolf.com/challenges/9v0061478032000000000212/user/mau-mauricelim)|
|[Contribute to keyboard mashing](https://www.vimgolf.com/challenges/9v00612c165c000000000211)|890|17|18|#116 / 270|[3](https://www.vimgolf.com/challenges/9v00612c165c000000000211/user/mau-mauricelim)|
|[Reordering Lorem Ipsum](https://www.vimgolf.com/challenges/9v00612800cb000000000210)|290|13|73|#41 / 66|[3](https://www.vimgolf.com/challenges/9v00612800cb000000000210/user/mau-mauricelim)|
|[Fill in the chess board](https://www.vimgolf.com/challenges/9v006115f6d000000000020c)|953|19|25|#63 / 182|[6](https://www.vimgolf.com/challenges/9v006115f6d000000000020c/user/mau-mauricelim)|
|[Simple, Practical, and Common](https://www.vimgolf.com/challenges/55b18bbea9c2c30d04000001)|33569|22|24|#3116 / 7404|[3](https://www.vimgolf.com/challenges/55b18bbea9c2c30d04000001/user/mau-mauricelim)|
|[One number per line](https://www.vimgolf.com/challenges/56fb2e75ccffcc0009026473)|18709|14|21|#2581 / 3856|[3](https://www.vimgolf.com/challenges/56fb2e75ccffcc0009026473/user/mau-mauricelim)|
|[Applying same text modification in several lines](https://www.vimgolf.com/challenges/5bbb82f969a25f0009541350)|2859|12|15|#540 / 845|[4](https://www.vimgolf.com/challenges/5bbb82f969a25f0009541350/user/mau-mauricelim)|
|[remove lines containing the word &quot;reader&quot;](https://www.vimgolf.com/challenges/5c264e64e8c64916d7fca650)|3573|9|10|#857 / 1157|[2](https://www.vimgolf.com/challenges/5c264e64e8c64916d7fca650/user/mau-mauricelim)|
|[Com(m)a Trouble](https://www.vimgolf.com/challenges/5ba020f91abf2d000951055c)|3780|12|15|#449 / 855|[4](https://www.vimgolf.com/challenges/5ba020f91abf2d000951055c/user/mau-mauricelim)|
|[Box it](https://www.vimgolf.com/challenges/5c742a5a50bdf70006d43280)|7898|21|25|#1043 / 1873|[5](https://www.vimgolf.com/challenges/5c742a5a50bdf70006d43280/user/mau-mauricelim)|
|[Cool or not?](https://www.vimgolf.com/challenges/5c82a157c82f3900064c82d7)|829|15|20|#166 / 230|[2](https://www.vimgolf.com/challenges/5c82a157c82f3900064c82d7/user/mau-mauricelim)|
|[Two pairs of cluster of letters creates word](https://www.vimgolf.com/challenges/5c93945c9caf21000ca842f7)|749|17|24|#142 / 178|[2](https://www.vimgolf.com/challenges/5c93945c9caf21000ca842f7/user/mau-mauricelim)|
|[Just the middle](https://www.vimgolf.com/challenges/54862fbb3f90ac0002904cf5)|11423|7|8|#3200 / 4185|[3](https://www.vimgolf.com/challenges/54862fbb3f90ac0002904cf5/user/mau-mauricelim)|
|[Basic renumbering](https://www.vimgolf.com/challenges/54595b13128576000257a3c1)|5644|11|11|#279 / 1262|[1](https://www.vimgolf.com/challenges/54595b13128576000257a3c1/user/mau-mauricelim)|
|[ninja substitution](https://www.vimgolf.com/challenges/5cb9d07d716c1b0009f69a40)|1420|14|18|#193 / 267|[2](https://www.vimgolf.com/challenges/5cb9d07d716c1b0009f69a40/user/mau-mauricelim)|
|[One to Ten](https://www.vimgolf.com/challenges/5c4d042acfafb4000c9f06c2)|2209|12|12|#365 / 669|[1](https://www.vimgolf.com/challenges/5c4d042acfafb4000c9f06c2/user/mau-mauricelim)|
|[Increment each number](https://www.vimgolf.com/challenges/5c645526fa8ae200061757ad)|1023|15|21|#183 / 248|[3](https://www.vimgolf.com/challenges/5c645526fa8ae200061757ad/user/mau-mauricelim)|
|[simple format (3)](https://www.vimgolf.com/challenges/5bff6e560d5dc0000ca3485b)|86|34|57|#20 / 24|[4](https://www.vimgolf.com/challenges/5bff6e560d5dc0000ca3485b/user/mau-mauricelim)|
|[I forgot quotes](https://www.vimgolf.com/challenges/5462e3f41198b80002512673)|15967|10|15|#2386 / 4174|[3](https://www.vimgolf.com/challenges/5462e3f41198b80002512673/user/mau-mauricelim)|
|[Words in parens](https://www.vimgolf.com/challenges/5192f96ad8df110002000002)|12925|13|14|#1176 / 3959|[5](https://www.vimgolf.com/challenges/5192f96ad8df110002000002/user/mau-mauricelim)|
|[Resort and deup a CSV list](https://www.vimgolf.com/challenges/5cace3ba888961000986ec8d)|167|44|48|#24 / 43|[6](https://www.vimgolf.com/challenges/5cace3ba888961000986ec8d/user/mau-mauricelim)|
|[Simple text editing with Vim](https://www.vimgolf.com/challenges/4d1a34ccfa85f32065000004)|12655|13|13|#725 / 3659|[2](https://www.vimgolf.com/challenges/4d1a34ccfa85f32065000004/user/mau-mauricelim)|
```
## View Diff
<details><summary>Click me</summary>

```
1,453c1,28
< <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
<     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
< <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en-us">
< <head>
< <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
< <meta http-equiv="Cache-control" content="no-cache" />
< <meta http-equiv="Pragma" content="no-cache" />
< <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
< <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
< <link rel="icon" type="image/png" sizes="96x96" href="/favicon-96x96.png">
< <title>VimGolf - real Vim ninjas count every keystroke!</title>
< <link rel="stylesheet" media="screen" href="/assets/application-184d466783787ffec00599fa72eb1ffe7c420c86624c38d337701d118124e30a.css" />
< <script src="/assets/application-7941238973273d25b4187dcef435ea60c803cc1a3a1c475bbfa0615de205ce1e.js"></script>
< <link rel="alternate" type="application/rss+xml" title="Latest VimGolf challenges" href="https://feeds.vimgolf.com/latest-challenges" />
< <meta name="csrf-param" content="authenticity_token" />
< </head>
< <body onload="prettyPrint()">
< <div id="header" class="container_12 clearfix">
< <div id="logo">
< <div><a href="/"><img src="/assets/vim_golf_logo-b6604c97f67ed10c1cc5fd8badf7d8fd4fccdd906537c9b898ea528ce48adf88.png" /> VimGolf</a></div>
< </div>
< <div id="navigation">
< <ul id="nav">
< <li><a href="/login">Sign in</a></li>
< </ul>
< </div>
< </div>
< <div id="about" class="container_12 clearfix">
< <div id="about" class="grid_7">
< <h3 style="margin:0.5em 0 0.5em 0">Real Vim ninjas count <b>every</b> keystroke - do you?</h3>
< <h6>Pick a challenge, fire up Vim, and show us what you got.</h6>
< <p><a href="/about">Changelog, Rules &amp; FAQ</a>, updates: <a href="https://twitter.com/vimgolf">@vimgolf</a>, <a href="http://feeds.vimgolf.com/latest-challenges">RSS</a>.</p>
< </div>
< <div id="instructions" class="grid_5">
< <pre class="terminal">
< <span class="shell">Your VimGolf key: <a href="/login">please sign in</a></span>
< 
< <span class="shell">$</span> gem install vimgolf
< <span class="shell">$</span> vimgolf setup
< <span class="shell">$</span> vimgolf put [challenge ID]
< </pre>
< </div>
< </div>
< <div id="content" class="container_12 clearfix">
< <div class="grid_7">
< <h3><b>Played Challenges</b></h3>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/9v0066dd4c360000000003c9">Markdown Blog Editing</a> - 159 entries
< </h5>
< <p>Convert the given link text in start file to a markdown link list.</p>
< </div>
< <ul>
< <li>Best score: <b>30</b></li>
< <li>Best player score: <b>36</b></li>
< <li>Position: <b>#12 / 42</b></li>
< <li>Number of attempts: <b><a href="/challenges/9v0066dd4c360000000003c9/user/mau-mauricelim">3</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/9v0066d89856000000000388">Fix timezone format</a> - 159 entries
< </h5>
< <p>Add the missing T and Z in the datetime field.
< There should be a T instead of the space, and a Z at the end of the datetime.
< `2024-08-31 18:32:00;` -&gt; `2024-08-31T18:32:00Z;`</p>
< </div>
< <ul>
< <li>Best score: <b>15</b></li>
< <li>Best player score: <b>15</b></li>
< <li>Position: <b>#10 / 53</b></li>
< <li>Number of attempts: <b><a href="/challenges/9v0066d89856000000000388/user/mau-mauricelim">5</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/9v0066d8266e000000000367">Search different SQL column with similar where clause</a> - 93 entries
< </h5>
< <p>Replace a column in the where clause and convert all numbers from text to numeric, by replacing the leading 0 with the code 359.</p>
< </div>
< <ul>
< <li>Best score: <b>22</b></li>
< <li>Best player score: <b>22</b></li>
< <li>Position: <b>#6 / 32</b></li>
< <li>Number of attempts: <b><a href="/challenges/9v0066d8266e000000000367/user/mau-mauricelim">6</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/9v00628a9b2f000000000220">Poorly indented Python comments</a> - 1313 entries
< </h5>
< <p>Fix the alignment of some Python comments as quickly as possible.</p>
< </div>
< <ul>
< <li>Best score: <b>15</b></li>
< <li>Best player score: <b>15</b></li>
< <li>Position: <b>#55 / 220</b></li>
< <li>Number of attempts: <b><a href="/challenges/9v00628a9b2f000000000220/user/mau-mauricelim">11</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/9v0061478032000000000212">hello-world-vimgolf</a> - 2484 entries
< </h5>
< <p>Simple number generation</p>
< </div>
< <ul>
< <li>Best score: <b>10</b></li>
< <li>Best player score: <b>10</b></li>
< <li>Position: <b>#341 / 703</b></li>
< <li>Number of attempts: <b><a href="/challenges/9v0061478032000000000212/user/mau-mauricelim">3</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/9v00612c165c000000000211">Contribute to keyboard mashing</a> - 890 entries
< </h5>
< <p>Speak in tongues</p>
< </div>
< <ul>
< <li>Best score: <b>17</b></li>
< <li>Best player score: <b>18</b></li>
< <li>Position: <b>#116 / 270</b></li>
< <li>Number of attempts: <b><a href="/challenges/9v00612c165c000000000211/user/mau-mauricelim">3</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/9v00612800cb000000000210">Reordering Lorem Ipsum</a> - 290 entries
< </h5>
< <p>Who even sorted this?</p>
< </div>
< <ul>
< <li>Best score: <b>13</b></li>
< <li>Best player score: <b>73</b></li>
< <li>Position: <b>#41 / 66</b></li>
< <li>Number of attempts: <b><a href="/challenges/9v00612800cb000000000210/user/mau-mauricelim">3</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/9v006115f6d000000000020c">Fill in the chess board</a> - 953 entries
< </h5>
< <p>Fill in the name of each square using its file (a-h) and rank (1-8).</p>
< </div>
< <ul>
< <li>Best score: <b>19</b></li>
< <li>Best player score: <b>25</b></li>
< <li>Position: <b>#63 / 182</b></li>
< <li>Number of attempts: <b><a href="/challenges/9v006115f6d000000000020c/user/mau-mauricelim">6</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/55b18bbea9c2c30d04000001">Simple, Practical, and Common</a> - 33569 entries
< </h5>
< <p>Simple things we do all the time should be able to be done with very few keystrokes, but sometimes I find something I need to do makes me go, &quot;There MUST be a better way.&quot;
< This challenge is just a simple movement and entering text at a certain place.</p>
< </div>
< <ul>
< <li>Best score: <b>22</b></li>
< <li>Best player score: <b>24</b></li>
< <li>Position: <b>#3116 / 7404</b></li>
< <li>Number of attempts: <b><a href="/challenges/55b18bbea9c2c30d04000001/user/mau-mauricelim">3</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/56fb2e75ccffcc0009026473">One number per line</a> - 18709 entries
< </h5>
< <p>Just give me the numbers.</p>
< </div>
< <ul>
< <li>Best score: <b>14</b></li>
< <li>Best player score: <b>21</b></li>
< <li>Position: <b>#2581 / 3856</b></li>
< <li>Number of attempts: <b><a href="/challenges/56fb2e75ccffcc0009026473/user/mau-mauricelim">3</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/5bbb82f969a25f0009541350">Applying same text modification in several lines</a> - 2859 entries
< </h5>
< <p>Remove identical text at the beginning of several lines and the closing parenthesis.</p>
< </div>
< <ul>
< <li>Best score: <b>12</b></li>
< <li>Best player score: <b>15</b></li>
< <li>Position: <b>#540 / 845</b></li>
< <li>Number of attempts: <b><a href="/challenges/5bbb82f969a25f0009541350/user/mau-mauricelim">4</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/5c264e64e8c64916d7fca650">remove lines containing the word &quot;reader&quot;</a> - 3573 entries
< </h5>
< <p>easy stuff</p>
< </div>
< <ul>
< <li>Best score: <b>9</b></li>
< <li>Best player score: <b>10</b></li>
< <li>Position: <b>#857 / 1157</b></li>
< <li>Number of attempts: <b><a href="/challenges/5c264e64e8c64916d7fca650/user/mau-mauricelim">2</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/5ba020f91abf2d000951055c">Com(m)a Trouble</a> - 3780 entries
< </h5>
< <p>Someone was real stupid when placing his commas. Can you fix it?</p>
< </div>
< <ul>
< <li>Best score: <b>12</b></li>
< <li>Best player score: <b>15</b></li>
< <li>Position: <b>#449 / 855</b></li>
< <li>Number of attempts: <b><a href="/challenges/5ba020f91abf2d000951055c/user/mau-mauricelim">4</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/5c742a5a50bdf70006d43280">Box it</a> - 7898 entries
< </h5>
< <p>Create a box around a line.</p>
< </div>
< <ul>
< <li>Best score: <b>21</b></li>
< <li>Best player score: <b>25</b></li>
< <li>Position: <b>#1043 / 1873</b></li>
< <li>Number of attempts: <b><a href="/challenges/5c742a5a50bdf70006d43280/user/mau-mauricelim">5</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/5c82a157c82f3900064c82d7">Cool or not?</a> - 829 entries
< </h5>
< <p>abc trying to be cool or not...</p>
< </div>
< <ul>
< <li>Best score: <b>15</b></li>
< <li>Best player score: <b>20</b></li>
< <li>Position: <b>#166 / 230</b></li>
< <li>Number of attempts: <b><a href="/challenges/5c82a157c82f3900064c82d7/user/mau-mauricelim">2</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/5c93945c9caf21000ca842f7">Two pairs of cluster of letters creates word</a> - 749 entries
< </h5>
< <p>Clean and group.</p>
< </div>
< <ul>
< <li>Best score: <b>17</b></li>
< <li>Best player score: <b>24</b></li>
< <li>Position: <b>#142 / 178</b></li>
< <li>Number of attempts: <b><a href="/challenges/5c93945c9caf21000ca842f7/user/mau-mauricelim">2</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/54862fbb3f90ac0002904cf5">Just the middle</a> - 11423 entries
< </h5>
< <p>Delete the instructions at the top and bottom.</p>
< </div>
< <ul>
< <li>Best score: <b>7</b></li>
< <li>Best player score: <b>8</b></li>
< <li>Position: <b>#3200 / 4185</b></li>
< <li>Number of attempts: <b><a href="/challenges/54862fbb3f90ac0002904cf5/user/mau-mauricelim">3</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/54595b13128576000257a3c1">Basic renumbering</a> - 5644 entries
< </h5>
< <p>Renumbering Basic.</p>
< </div>
< <ul>
< <li>Best score: <b>11</b></li>
< <li>Best player score: <b>11</b></li>
< <li>Position: <b>#279 / 1262</b></li>
< <li>Number of attempts: <b><a href="/challenges/54595b13128576000257a3c1/user/mau-mauricelim">1</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/5cb9d07d716c1b0009f69a40">ninja substitution</a> - 1420 entries
< </h5>
< <p>How can you reuse a previous substitution ?</p>
< </div>
< <ul>
< <li>Best score: <b>14</b></li>
< <li>Best player score: <b>18</b></li>
< <li>Position: <b>#193 / 267</b></li>
< <li>Number of attempts: <b><a href="/challenges/5cb9d07d716c1b0009f69a40/user/mau-mauricelim">2</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/5c4d042acfafb4000c9f06c2">One to Ten</a> - 2209 entries
< </h5>
< <p>Generate the sequence of numbers from 1 to 10, one number per line.
< Inspired by this Reddit thread: https://redd.it/ak4it2</p>
< </div>
< <ul>
< <li>Best score: <b>12</b></li>
< <li>Best player score: <b>12</b></li>
< <li>Position: <b>#365 / 669</b></li>
< <li>Number of attempts: <b><a href="/challenges/5c4d042acfafb4000c9f06c2/user/mau-mauricelim">1</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/5c645526fa8ae200061757ad">Increment each number</a> - 1023 entries
< </h5>
< <p>Increment each number individually by one</p>
< </div>
< <ul>
< <li>Best score: <b>15</b></li>
< <li>Best player score: <b>21</b></li>
< <li>Position: <b>#183 / 248</b></li>
< <li>Number of attempts: <b><a href="/challenges/5c645526fa8ae200061757ad/user/mau-mauricelim">3</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/5bff6e560d5dc0000ca3485b">simple format (3)</a> - 86 entries
< </h5>
< <p>reverse two column values!</p>
< </div>
< <ul>
< <li>Best score: <b>34</b></li>
< <li>Best player score: <b>57</b></li>
< <li>Position: <b>#20 / 24</b></li>
< <li>Number of attempts: <b><a href="/challenges/5bff6e560d5dc0000ca3485b/user/mau-mauricelim">4</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/5462e3f41198b80002512673">I forgot quotes</a> - 15967 entries
< </h5>
< <p>Oops.</p>
< </div>
< <ul>
< <li>Best score: <b>10</b></li>
< <li>Best player score: <b>15</b></li>
< <li>Position: <b>#2386 / 4174</b></li>
< <li>Number of attempts: <b><a href="/challenges/5462e3f41198b80002512673/user/mau-mauricelim">3</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/5192f96ad8df110002000002">Words in parens</a> - 12925 entries
< </h5>
< <p>We should all ace this, right?</p>
< </div>
< <ul>
< <li>Best score: <b>13</b></li>
< <li>Best player score: <b>14</b></li>
< <li>Position: <b>#1176 / 3959</b></li>
< <li>Number of attempts: <b><a href="/challenges/5192f96ad8df110002000002/user/mau-mauricelim">5</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/5cace3ba888961000986ec8d">Resort and deup a CSV list</a> - 167 entries
< </h5>
< <p>I&#39;m always adding items to a sorted list. There has to be a better way dedup and resort the lists.
< There are multiple lists with varying lengths to discourage manual sorting.
< Also Australia&#39;s animals are weird.</p>
< </div>
< <ul>
< <li>Best score: <b>44</b></li>
< <li>Best player score: <b>48</b></li>
< <li>Position: <b>#24 / 43</b></li>
< <li>Number of attempts: <b><a href="/challenges/5cace3ba888961000986ec8d/user/mau-mauricelim">6</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/4d1a34ccfa85f32065000004">Simple text editing with Vim</a> - 12655 entries
< </h5>
< <p>Make the pairs of lines match up by making each second line same as first</p>
< </div>
< <ul>
< <li>Best score: <b>13</b></li>
< <li>Best player score: <b>13</b></li>
< <li>Position: <b>#725 / 3659</b></li>
< <li>Number of attempts: <b><a href="/challenges/4d1a34ccfa85f32065000004/user/mau-mauricelim">2</a></b></li>
< </ul>
< </div>
< </div>
< <div class="grid_5">
< <div class="notice clearfix">
< <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwAQMAAABtzGvEAAAABlBMVEUAAAAk
< B57C1X93AAAAAnRSTlMA/1uRIrUAAABCSURBVHicY/rDAAT2TAxggJdiYbD/
< w3CQGJUM/I3sHwgogVIf638KEKeSaAroSBYifcR/gPkDUT5iflj/U/4AESoB
< 1VwPXpT5l9sAAAAASUVORK5CYII=
< " class="user">
< <h6 style="margin-bottom:0">
< <b>mau-mauricelim</b><br/>Github: <a href="https://www.github.com/mau-mauricelim" class="twitter-link" target="_new">@mau-mauricelim</a>
< </h6>
< <p style="margin-bottom:0"><em></em></p>
< </div>
< <h2 style="padding:0em;margin:1em 1.5em 0.5em 1.5em">entered into <b class="stat">26</b> challenges</h2>
< <h2 style="padding:0em;margin:0.5em 1.5em">contributed <b class="stat">0</b> challenges</h2>
< </div>
< </div>
< <div id="footer" class="container_12 clearfix">
< <div id="copy">
< <a href="/about">Changelog, Rules &amp; FAQ</a>, &nbsp;&nbsp;
< CLI Version: <b><a href="https://github.com/igrigorik/vimgolf">0.5.0</a></b>, &nbsp;&nbsp;
< <a href="https://github.com/igrigorik/vimgolf/">Contribute on GitHub</a>
< </div>
< </div>
< <script type="text/javascript">
<     var _gaq = _gaq || [];
<     _gaq.push(['_setAccount', 'UA-71196-5']);
<     _gaq.push(['_trackPageview']);
< 
<     (function() {
<       var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
<       ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
<       var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
<     })();
<   </script>
< </body>
< </html>
---
> |Played Challenges|Entries|Best score|Best player score|Position|Number of attempts|
> |-|-|-|-|-|-|
> |[Markdown Blog Editing](https://www.vimgolf.com/challenges/9v0066dd4c360000000003c9)|159|30|36|#12 / 42|[3](https://www.vimgolf.com/challenges/9v0066dd4c360000000003c9/user/mau-mauricelim)|
> |[Fix timezone format](https://www.vimgolf.com/challenges/9v0066d89856000000000388)|159|15|15|#10 / 53|[5](https://www.vimgolf.com/challenges/9v0066d89856000000000388/user/mau-mauricelim)|
> |[Search different SQL column with similar where clause](https://www.vimgolf.com/challenges/9v0066d8266e000000000367)|93|22|22|#6 / 32|[6](https://www.vimgolf.com/challenges/9v0066d8266e000000000367/user/mau-mauricelim)|
> |[Poorly indented Python comments](https://www.vimgolf.com/challenges/9v00628a9b2f000000000220)|1313|15|15|#55 / 220|[11](https://www.vimgolf.com/challenges/9v00628a9b2f000000000220/user/mau-mauricelim)|
> |[hello-world-vimgolf](https://www.vimgolf.com/challenges/9v0061478032000000000212)|2484|10|10|#341 / 703|[3](https://www.vimgolf.com/challenges/9v0061478032000000000212/user/mau-mauricelim)|
> |[Contribute to keyboard mashing](https://www.vimgolf.com/challenges/9v00612c165c000000000211)|890|17|18|#116 / 270|[3](https://www.vimgolf.com/challenges/9v00612c165c000000000211/user/mau-mauricelim)|
> |[Reordering Lorem Ipsum](https://www.vimgolf.com/challenges/9v00612800cb000000000210)|290|13|73|#41 / 66|[3](https://www.vimgolf.com/challenges/9v00612800cb000000000210/user/mau-mauricelim)|
> |[Fill in the chess board](https://www.vimgolf.com/challenges/9v006115f6d000000000020c)|953|19|25|#63 / 182|[6](https://www.vimgolf.com/challenges/9v006115f6d000000000020c/user/mau-mauricelim)|
> |[Simple, Practical, and Common](https://www.vimgolf.com/challenges/55b18bbea9c2c30d04000001)|33569|22|24|#3116 / 7404|[3](https://www.vimgolf.com/challenges/55b18bbea9c2c30d04000001/user/mau-mauricelim)|
> |[One number per line](https://www.vimgolf.com/challenges/56fb2e75ccffcc0009026473)|18709|14|21|#2581 / 3856|[3](https://www.vimgolf.com/challenges/56fb2e75ccffcc0009026473/user/mau-mauricelim)|
> |[Applying same text modification in several lines](https://www.vimgolf.com/challenges/5bbb82f969a25f0009541350)|2859|12|15|#540 / 845|[4](https://www.vimgolf.com/challenges/5bbb82f969a25f0009541350/user/mau-mauricelim)|
> |[remove lines containing the word &quot;reader&quot;](https://www.vimgolf.com/challenges/5c264e64e8c64916d7fca650)|3573|9|10|#857 / 1157|[2](https://www.vimgolf.com/challenges/5c264e64e8c64916d7fca650/user/mau-mauricelim)|
> |[Com(m)a Trouble](https://www.vimgolf.com/challenges/5ba020f91abf2d000951055c)|3780|12|15|#449 / 855|[4](https://www.vimgolf.com/challenges/5ba020f91abf2d000951055c/user/mau-mauricelim)|
> |[Box it](https://www.vimgolf.com/challenges/5c742a5a50bdf70006d43280)|7898|21|25|#1043 / 1873|[5](https://www.vimgolf.com/challenges/5c742a5a50bdf70006d43280/user/mau-mauricelim)|
> |[Cool or not?](https://www.vimgolf.com/challenges/5c82a157c82f3900064c82d7)|829|15|20|#166 / 230|[2](https://www.vimgolf.com/challenges/5c82a157c82f3900064c82d7/user/mau-mauricelim)|
> |[Two pairs of cluster of letters creates word](https://www.vimgolf.com/challenges/5c93945c9caf21000ca842f7)|749|17|24|#142 / 178|[2](https://www.vimgolf.com/challenges/5c93945c9caf21000ca842f7/user/mau-mauricelim)|
> |[Just the middle](https://www.vimgolf.com/challenges/54862fbb3f90ac0002904cf5)|11423|7|8|#3200 / 4185|[3](https://www.vimgolf.com/challenges/54862fbb3f90ac0002904cf5/user/mau-mauricelim)|
> |[Basic renumbering](https://www.vimgolf.com/challenges/54595b13128576000257a3c1)|5644|11|11|#279 / 1262|[1](https://www.vimgolf.com/challenges/54595b13128576000257a3c1/user/mau-mauricelim)|
> |[ninja substitution](https://www.vimgolf.com/challenges/5cb9d07d716c1b0009f69a40)|1420|14|18|#193 / 267|[2](https://www.vimgolf.com/challenges/5cb9d07d716c1b0009f69a40/user/mau-mauricelim)|
> |[One to Ten](https://www.vimgolf.com/challenges/5c4d042acfafb4000c9f06c2)|2209|12|12|#365 / 669|[1](https://www.vimgolf.com/challenges/5c4d042acfafb4000c9f06c2/user/mau-mauricelim)|
> |[Increment each number](https://www.vimgolf.com/challenges/5c645526fa8ae200061757ad)|1023|15|21|#183 / 248|[3](https://www.vimgolf.com/challenges/5c645526fa8ae200061757ad/user/mau-mauricelim)|
> |[simple format (3)](https://www.vimgolf.com/challenges/5bff6e560d5dc0000ca3485b)|86|34|57|#20 / 24|[4](https://www.vimgolf.com/challenges/5bff6e560d5dc0000ca3485b/user/mau-mauricelim)|
> |[I forgot quotes](https://www.vimgolf.com/challenges/5462e3f41198b80002512673)|15967|10|15|#2386 / 4174|[3](https://www.vimgolf.com/challenges/5462e3f41198b80002512673/user/mau-mauricelim)|
> |[Words in parens](https://www.vimgolf.com/challenges/5192f96ad8df110002000002)|12925|13|14|#1176 / 3959|[5](https://www.vimgolf.com/challenges/5192f96ad8df110002000002/user/mau-mauricelim)|
> |[Resort and deup a CSV list](https://www.vimgolf.com/challenges/5cace3ba888961000986ec8d)|167|44|48|#24 / 43|[6](https://www.vimgolf.com/challenges/5cace3ba888961000986ec8d/user/mau-mauricelim)|
> |[Simple text editing with Vim](https://www.vimgolf.com/challenges/4d1a34ccfa85f32065000004)|12655|13|13|#725 / 3659|[2](https://www.vimgolf.com/challenges/4d1a34ccfa85f32065000004/user/mau-mauricelim)|
```
</details>

## VimGolf Solution
```sh
/h5<CR>dggG?</u<CR>dG
:g/^<\/h/,/^<ul/d<CR>
:g/^<\/u/,/^<h/d<CR>
:%s/"/"https:\/\/www.vimgolf.com/|%s/^<a.*"\(.*\)">\(.*\)<.* \(\d\+\).*/[\2](\1)|\3/|%s/<a.*"\(.*\)">\(\d\+\).*a>/[\2](\1)/|%s/^<.*<b>\(.*\)<\/b.*/\1/|%s/\(.\+\)\r\?\n *\(.*\)\r\?\n *\(.*\)\r\?\n *\(.*\)\r\?\n *\(.*\)/\1|\2|\3|\4|\5<CR>
ggOPlayed Challenges|Entries|Best score|Best player score|Position|Number of attempts<CR>-|-|-|-|-|-<Esc>
:%s/\(.*\)/|\1|<CR>ZZ
```
## KdbGolf Solution
```q
c:flip where@'(i:read0`:inp)like/:("*> -*";"*i>N*");
t:{s:raze 1 -4#\:x y _til z+1;
    s:@[s;1+til 4;{-2_("b>"vs x)1}];
    s:@[s[0,()],s;0 1;:;" - "vs -8_s 0];
    "|"sv@[s;0 5;{r:"\">"vs"https://www.vimgolf.com/",-4_10_x;"[",r[1],"](",r[0],")"}]
    }[i].'c;
h:"Played Challenges|Entries|Best score|Best player score|Position|Number of attempts";
/ `out 0:{"|",x,"|"}@'(h;ssr[;"--";"-"]/[ssr[h;"[A-z ]";"-"]]),t
`out 0:{"|",x,"|"}@'(h;ssr[h;"[A-z ]";"-"]),t;
```
