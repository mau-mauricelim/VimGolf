# VimGolf
## Table of contents
- [applying_same_text_modification_in_several_lines](#applying_same_text_modification_in_several_lines)
- [box_it](#box_it)
- [com_m_a_trouble](#com_m_a_trouble)
- [cool_or_not](#cool_or_not)
- [i_forgot_quotes](#i_forgot_quotes)
- [just_the_middle](#just_the_middle)
- [one_number_per_line](#one_number_per_line)
- [one_to_ten](#one_to_ten)
- [played_challenges](#played_challenges)
- [simple_practical_and_common](#simple_practical_and_common)
- [two_pairs_of_cluster_of_letters_creates_word](#two_pairs_of_cluster_of_letters_creates_word)
- [words_in_parens](#words_in_parens)
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
<meta name="csrf-token" content="5L30ixncWHHfXhvg25/GNpTzwRc+oPH92qkGDN+uq50b2FRxLTaP1QZkDcq8AhhN7MHkDLsgdHpc0Ah2tbTYlQ==" />
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
<a href="/challenges/55b18bbea9c2c30d04000001">Simple, Practical, and Common</a> - 33525 entries
</h5>
<p>Simple things we do all the time should be able to be done with very few keystrokes, but sometimes I find something I need to do makes me go, &quot;There MUST be a better way.&quot;
This challenge is just a simple movement and entering text at a certain place.</p>
</div>
<ul>
<li>Best score: <b>22</b></li>
<li>Best player score: <b>24</b></li>
<li>Position: <b>#3112 / 7395</b></li>
<li>Number of attempts: <b><a href="/challenges/55b18bbea9c2c30d04000001/user/mau-mauricelim">3</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/56fb2e75ccffcc0009026473">One number per line</a> - 18705 entries
</h5>
<p>Just give me the numbers.</p>
</div>
<ul>
<li>Best score: <b>14</b></li>
<li>Best player score: <b>21</b></li>
<li>Position: <b>#2580 / 3855</b></li>
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
<a href="/challenges/5c264e64e8c64916d7fca650">remove lines containing the word &quot;reader&quot;</a> - 3572 entries
</h5>
<p>easy stuff</p>
</div>
<ul>
<li>Best score: <b>9</b></li>
<li>Best player score: <b>10</b></li>
<li>Position: <b>#857 / 1156</b></li>
<li>Number of attempts: <b><a href="/challenges/5c264e64e8c64916d7fca650/user/mau-mauricelim">2</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/5ba020f91abf2d000951055c">Com(m)a Trouble</a> - 3766 entries
</h5>
<p>Someone was real stupid when placing his commas. Can you fix it?</p>
</div>
<ul>
<li>Best score: <b>12</b></li>
<li>Best player score: <b>15</b></li>
<li>Position: <b>#447 / 852</b></li>
<li>Number of attempts: <b><a href="/challenges/5ba020f91abf2d000951055c/user/mau-mauricelim">4</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/5c742a5a50bdf70006d43280">Box it</a> - 7897 entries
</h5>
<p>Create a box around a line.</p>
</div>
<ul>
<li>Best score: <b>21</b></li>
<li>Best player score: <b>25</b></li>
<li>Position: <b>#1043 / 1872</b></li>
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
<a href="/challenges/54862fbb3f90ac0002904cf5">Just the middle</a> - 11407 entries
</h5>
<p>Delete the instructions at the top and bottom.</p>
</div>
<ul>
<li>Best score: <b>7</b></li>
<li>Best player score: <b>8</b></li>
<li>Position: <b>#3200 / 4179</b></li>
<li>Number of attempts: <b><a href="/challenges/54862fbb3f90ac0002904cf5/user/mau-mauricelim">3</a></b></li>
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
<a href="/challenges/5c4d042acfafb4000c9f06c2">One to Ten</a> - 2205 entries
</h5>
<p>Generate the sequence of numbers from 1 to 10, one number per line.
Inspired by this Reddit thread: https://redd.it/ak4it2</p>
</div>
<ul>
<li>Best score: <b>12</b></li>
<li>Best player score: <b>12</b></li>
<li>Position: <b>#365 / 668</b></li>
<li>Number of attempts: <b><a href="/challenges/5c4d042acfafb4000c9f06c2/user/mau-mauricelim">1</a></b></li>
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
<a href="/challenges/5462e3f41198b80002512673">I forgot quotes</a> - 15951 entries
</h5>
<p>Oops.</p>
</div>
<ul>
<li>Best score: <b>10</b></li>
<li>Best player score: <b>15</b></li>
<li>Position: <b>#2383 / 4169</b></li>
<li>Number of attempts: <b><a href="/challenges/5462e3f41198b80002512673/user/mau-mauricelim">3</a></b></li>
</ul>
</div>
<div>
<div>
<h5 class="challenge">
<a href="/challenges/5192f96ad8df110002000002">Words in parens</a> - 12910 entries
</h5>
<p>We should all ace this, right?</p>
</div>
<ul>
<li>Best score: <b>13</b></li>
<li>Best player score: <b>14</b></li>
<li>Position: <b>#1176 / 3955</b></li>
<li>Number of attempts: <b><a href="/challenges/5192f96ad8df110002000002/user/mau-mauricelim">5</a></b></li>
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
<h2 style="padding:0em;margin:1em 1.5em 0.5em 1.5em">entered into <b class="stat">14</b> challenges</h2>
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
|[Simple, Practical, and Common](https://www.vimgolf.com/challenges/55b18bbea9c2c30d04000001)|33525|22|24|#3112 / 7395|[3](https://www.vimgolf.com/challenges/55b18bbea9c2c30d04000001/user/mau-mauricelim)|
|[One number per line](https://www.vimgolf.com/challenges/56fb2e75ccffcc0009026473)|18705|14|21|#2580 / 3855|[3](https://www.vimgolf.com/challenges/56fb2e75ccffcc0009026473/user/mau-mauricelim)|
|[Applying same text modification in several lines](https://www.vimgolf.com/challenges/5bbb82f969a25f0009541350)|2859|12|15|#540 / 845|[4](https://www.vimgolf.com/challenges/5bbb82f969a25f0009541350/user/mau-mauricelim)|
|[remove lines containing the word &quot;reader&quot;](https://www.vimgolf.com/challenges/5c264e64e8c64916d7fca650)|3572|9|10|#857 / 1156|[2](https://www.vimgolf.com/challenges/5c264e64e8c64916d7fca650/user/mau-mauricelim)|
|[Com(m)a Trouble](https://www.vimgolf.com/challenges/5ba020f91abf2d000951055c)|3766|12|15|#447 / 852|[4](https://www.vimgolf.com/challenges/5ba020f91abf2d000951055c/user/mau-mauricelim)|
|[Box it](https://www.vimgolf.com/challenges/5c742a5a50bdf70006d43280)|7897|21|25|#1043 / 1872|[5](https://www.vimgolf.com/challenges/5c742a5a50bdf70006d43280/user/mau-mauricelim)|
|[Cool or not?](https://www.vimgolf.com/challenges/5c82a157c82f3900064c82d7)|829|15|20|#166 / 230|[2](https://www.vimgolf.com/challenges/5c82a157c82f3900064c82d7/user/mau-mauricelim)|
|[Two pairs of cluster of letters creates word](https://www.vimgolf.com/challenges/5c93945c9caf21000ca842f7)|749|17|24|#142 / 178|[2](https://www.vimgolf.com/challenges/5c93945c9caf21000ca842f7/user/mau-mauricelim)|
|[Just the middle](https://www.vimgolf.com/challenges/54862fbb3f90ac0002904cf5)|11407|7|8|#3200 / 4179|[3](https://www.vimgolf.com/challenges/54862fbb3f90ac0002904cf5/user/mau-mauricelim)|
|[ninja substitution](https://www.vimgolf.com/challenges/5cb9d07d716c1b0009f69a40)|1420|14|18|#193 / 267|[2](https://www.vimgolf.com/challenges/5cb9d07d716c1b0009f69a40/user/mau-mauricelim)|
|[One to Ten](https://www.vimgolf.com/challenges/5c4d042acfafb4000c9f06c2)|2205|12|12|#365 / 668|[1](https://www.vimgolf.com/challenges/5c4d042acfafb4000c9f06c2/user/mau-mauricelim)|
|[simple format (3)](https://www.vimgolf.com/challenges/5bff6e560d5dc0000ca3485b)|86|34|57|#20 / 24|[4](https://www.vimgolf.com/challenges/5bff6e560d5dc0000ca3485b/user/mau-mauricelim)|
|[I forgot quotes](https://www.vimgolf.com/challenges/5462e3f41198b80002512673)|15951|10|15|#2383 / 4169|[3](https://www.vimgolf.com/challenges/5462e3f41198b80002512673/user/mau-mauricelim)|
|[Words in parens](https://www.vimgolf.com/challenges/5192f96ad8df110002000002)|12910|13|14|#1176 / 3955|[5](https://www.vimgolf.com/challenges/5192f96ad8df110002000002/user/mau-mauricelim)|
```
## View Diff
<details><summary>Click me</summary>

```
1,282c1,16
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
< <meta name="csrf-token" content="5L30ixncWHHfXhvg25/GNpTzwRc+oPH92qkGDN+uq50b2FRxLTaP1QZkDcq8AhhN7MHkDLsgdHpc0Ah2tbTYlQ==" />
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
< <a href="/challenges/55b18bbea9c2c30d04000001">Simple, Practical, and Common</a> - 33525 entries
< </h5>
< <p>Simple things we do all the time should be able to be done with very few keystrokes, but sometimes I find something I need to do makes me go, &quot;There MUST be a better way.&quot;
< This challenge is just a simple movement and entering text at a certain place.</p>
< </div>
< <ul>
< <li>Best score: <b>22</b></li>
< <li>Best player score: <b>24</b></li>
< <li>Position: <b>#3112 / 7395</b></li>
< <li>Number of attempts: <b><a href="/challenges/55b18bbea9c2c30d04000001/user/mau-mauricelim">3</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/56fb2e75ccffcc0009026473">One number per line</a> - 18705 entries
< </h5>
< <p>Just give me the numbers.</p>
< </div>
< <ul>
< <li>Best score: <b>14</b></li>
< <li>Best player score: <b>21</b></li>
< <li>Position: <b>#2580 / 3855</b></li>
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
< <a href="/challenges/5c264e64e8c64916d7fca650">remove lines containing the word &quot;reader&quot;</a> - 3572 entries
< </h5>
< <p>easy stuff</p>
< </div>
< <ul>
< <li>Best score: <b>9</b></li>
< <li>Best player score: <b>10</b></li>
< <li>Position: <b>#857 / 1156</b></li>
< <li>Number of attempts: <b><a href="/challenges/5c264e64e8c64916d7fca650/user/mau-mauricelim">2</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/5ba020f91abf2d000951055c">Com(m)a Trouble</a> - 3766 entries
< </h5>
< <p>Someone was real stupid when placing his commas. Can you fix it?</p>
< </div>
< <ul>
< <li>Best score: <b>12</b></li>
< <li>Best player score: <b>15</b></li>
< <li>Position: <b>#447 / 852</b></li>
< <li>Number of attempts: <b><a href="/challenges/5ba020f91abf2d000951055c/user/mau-mauricelim">4</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/5c742a5a50bdf70006d43280">Box it</a> - 7897 entries
< </h5>
< <p>Create a box around a line.</p>
< </div>
< <ul>
< <li>Best score: <b>21</b></li>
< <li>Best player score: <b>25</b></li>
< <li>Position: <b>#1043 / 1872</b></li>
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
< <a href="/challenges/54862fbb3f90ac0002904cf5">Just the middle</a> - 11407 entries
< </h5>
< <p>Delete the instructions at the top and bottom.</p>
< </div>
< <ul>
< <li>Best score: <b>7</b></li>
< <li>Best player score: <b>8</b></li>
< <li>Position: <b>#3200 / 4179</b></li>
< <li>Number of attempts: <b><a href="/challenges/54862fbb3f90ac0002904cf5/user/mau-mauricelim">3</a></b></li>
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
< <a href="/challenges/5c4d042acfafb4000c9f06c2">One to Ten</a> - 2205 entries
< </h5>
< <p>Generate the sequence of numbers from 1 to 10, one number per line.
< Inspired by this Reddit thread: https://redd.it/ak4it2</p>
< </div>
< <ul>
< <li>Best score: <b>12</b></li>
< <li>Best player score: <b>12</b></li>
< <li>Position: <b>#365 / 668</b></li>
< <li>Number of attempts: <b><a href="/challenges/5c4d042acfafb4000c9f06c2/user/mau-mauricelim">1</a></b></li>
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
< <a href="/challenges/5462e3f41198b80002512673">I forgot quotes</a> - 15951 entries
< </h5>
< <p>Oops.</p>
< </div>
< <ul>
< <li>Best score: <b>10</b></li>
< <li>Best player score: <b>15</b></li>
< <li>Position: <b>#2383 / 4169</b></li>
< <li>Number of attempts: <b><a href="/challenges/5462e3f41198b80002512673/user/mau-mauricelim">3</a></b></li>
< </ul>
< </div>
< <div>
< <div>
< <h5 class="challenge">
< <a href="/challenges/5192f96ad8df110002000002">Words in parens</a> - 12910 entries
< </h5>
< <p>We should all ace this, right?</p>
< </div>
< <ul>
< <li>Best score: <b>13</b></li>
< <li>Best player score: <b>14</b></li>
< <li>Position: <b>#1176 / 3955</b></li>
< <li>Number of attempts: <b><a href="/challenges/5192f96ad8df110002000002/user/mau-mauricelim">5</a></b></li>
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
< <h2 style="padding:0em;margin:1em 1.5em 0.5em 1.5em">entered into <b class="stat">14</b> challenges</h2>
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
> |[Simple, Practical, and Common](https://www.vimgolf.com/challenges/55b18bbea9c2c30d04000001)|33525|22|24|#3112 / 7395|[3](https://www.vimgolf.com/challenges/55b18bbea9c2c30d04000001/user/mau-mauricelim)|
> |[One number per line](https://www.vimgolf.com/challenges/56fb2e75ccffcc0009026473)|18705|14|21|#2580 / 3855|[3](https://www.vimgolf.com/challenges/56fb2e75ccffcc0009026473/user/mau-mauricelim)|
> |[Applying same text modification in several lines](https://www.vimgolf.com/challenges/5bbb82f969a25f0009541350)|2859|12|15|#540 / 845|[4](https://www.vimgolf.com/challenges/5bbb82f969a25f0009541350/user/mau-mauricelim)|
> |[remove lines containing the word &quot;reader&quot;](https://www.vimgolf.com/challenges/5c264e64e8c64916d7fca650)|3572|9|10|#857 / 1156|[2](https://www.vimgolf.com/challenges/5c264e64e8c64916d7fca650/user/mau-mauricelim)|
> |[Com(m)a Trouble](https://www.vimgolf.com/challenges/5ba020f91abf2d000951055c)|3766|12|15|#447 / 852|[4](https://www.vimgolf.com/challenges/5ba020f91abf2d000951055c/user/mau-mauricelim)|
> |[Box it](https://www.vimgolf.com/challenges/5c742a5a50bdf70006d43280)|7897|21|25|#1043 / 1872|[5](https://www.vimgolf.com/challenges/5c742a5a50bdf70006d43280/user/mau-mauricelim)|
> |[Cool or not?](https://www.vimgolf.com/challenges/5c82a157c82f3900064c82d7)|829|15|20|#166 / 230|[2](https://www.vimgolf.com/challenges/5c82a157c82f3900064c82d7/user/mau-mauricelim)|
> |[Two pairs of cluster of letters creates word](https://www.vimgolf.com/challenges/5c93945c9caf21000ca842f7)|749|17|24|#142 / 178|[2](https://www.vimgolf.com/challenges/5c93945c9caf21000ca842f7/user/mau-mauricelim)|
> |[Just the middle](https://www.vimgolf.com/challenges/54862fbb3f90ac0002904cf5)|11407|7|8|#3200 / 4179|[3](https://www.vimgolf.com/challenges/54862fbb3f90ac0002904cf5/user/mau-mauricelim)|
> |[ninja substitution](https://www.vimgolf.com/challenges/5cb9d07d716c1b0009f69a40)|1420|14|18|#193 / 267|[2](https://www.vimgolf.com/challenges/5cb9d07d716c1b0009f69a40/user/mau-mauricelim)|
> |[One to Ten](https://www.vimgolf.com/challenges/5c4d042acfafb4000c9f06c2)|2205|12|12|#365 / 668|[1](https://www.vimgolf.com/challenges/5c4d042acfafb4000c9f06c2/user/mau-mauricelim)|
> |[simple format (3)](https://www.vimgolf.com/challenges/5bff6e560d5dc0000ca3485b)|86|34|57|#20 / 24|[4](https://www.vimgolf.com/challenges/5bff6e560d5dc0000ca3485b/user/mau-mauricelim)|
> |[I forgot quotes](https://www.vimgolf.com/challenges/5462e3f41198b80002512673)|15951|10|15|#2383 / 4169|[3](https://www.vimgolf.com/challenges/5462e3f41198b80002512673/user/mau-mauricelim)|
> |[Words in parens](https://www.vimgolf.com/challenges/5192f96ad8df110002000002)|12910|13|14|#1176 / 3955|[5](https://www.vimgolf.com/challenges/5192f96ad8df110002000002/user/mau-mauricelim)|
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
