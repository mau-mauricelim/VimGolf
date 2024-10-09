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
`:out 0:{x _ x?")"}@' 36_'read0`:inp
```
