#!/usr/bin/env bash
stats=$(curl -sL https://www.vimgolf.com/45533/mau-mauricelim)
CHALLENGE=$(git rev-parse --show-toplevel)/Played_Challenges

echo "$stats" > "$CHALLENGE/inp"
out=$(echo "$stats" |\
    sed '/^<!/,/^<h5/d ; /grid_5/,/html/d ; /^<\/h/,/^<ul/d ; /^<\/u/,/^<h/d ; s/"/"https:\/\/www.vimgolf.com/ ; s/^<a.*"\(.*\)">\(.*\)<.* \([[:digit:]]\+\).*/[\2](\1)|\3/ ; s/<a.*"\(.*\)">\([[:digit:]]\+\).*a>/\[\2](\1)/ ; s/^<.*<b>\(.*\)<\/b.*/\1/' |\
    paste -d"|" - - - - -)

{ echo -e "Played Challenges|Entries|Best score|Best player score|Position|Number of attempts\n-|-|-|-|-|-"; echo "$out"; } > "$CHALLENGE/out"
sed -i 's/\(.*\)/|\1|/' "$CHALLENGE/out"
cat "$CHALLENGE/out"

