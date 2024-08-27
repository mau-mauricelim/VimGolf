#!/usr/bin/env bash
stats=$(curl -sL https://www.vimgolf.com/45533/mau-mauricelim)
CHALLENGE=$(git rev-parse --show-toplevel)/Played_Challenges

echo "$stats" > "$CHALLENGE/inp"
out=$(echo "$stats" |\
    sed '/^<!/,/^<h5/d' |\
    sed '/grid_5/,/html/d' |\
    sed '/^<\/h/,/^<ul/d' |\
    sed '/^<\/u/,/^<h/d' |\
    sed 's/"/"https:\/\/www.vimgolf.com/' |\
    sed 's/^<a.*"\(.*\)">\(.*\)<.* \(\d\+\).*/[\2](\1)|\3/' |\
    sed 's/<a.*"\(.*\)">\(\d\+\).*a>/[\2](\1)/' |\
    sed 's/^<.*<b>\(.*\)<\/b.*/\1/' |\
    paste -d"|" - - - - -)

{ echo -e "Played Challenges|Entries|Best score|Best player score|Position|Number of attempts\n-|-|-|-|-|-"; echo "$out"; } > "$CHALLENGE/out"
sed -i 's/\(.*\)/|\1|/' "$CHALLENGE/out"
