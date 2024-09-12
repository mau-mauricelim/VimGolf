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
