c:flip where@'(i:read0`:inp)like/:("*> -*";"*i>N*");
t:{s:raze 1 -4#\:x y _til z+1;
    s:@[s;1+til 4;{-2_("b>"vs x)1}];
    s:@[s[0,()],s;0 1;:;" - "vs -8_s 0];
    "|"sv@[s;0 5;{r:"\">"vs"https://www.vimgolf.com/",-4_10_x;"[",r[1],"](",r[0],")"}]
    }[i].'c;
h:"Played Challenges|Entries|Best score|Best player score|Position|Number of attempts";
/ `out 0:{"|",x,"|"}@'(h;ssr[;"--";"-"]/[ssr[h;"[A-z ]";"-"]]),t
`out 0:{"|",x,"|"}@'(h;ssr[h;"[A-z ]";"-"]),t;
