#!/usr/bin/env bash
for CHALLENGE in "${@%/}" # Strips trailing slash
do
    NAME="$(basename "$CHALLENGE" | sed 's/\.//g')" # Strips dots
    DOC="$CHALLENGE/README.md"
    appendToDoc() {
        echo "${1}" >> "$DOC"
    }
    codeBlock() {
        echo '```'"$2"
        echo "${1}"
        echo '```'
    }

    rm -f "$DOC" && touch "$DOC"
    appendToDoc "# $NAME"
    appendToDoc "## Start file"
    appendToDoc "$(codeBlock "$(cat "$CHALLENGE/inp")")"
    appendToDoc "## End file"
    appendToDoc "$(codeBlock "$(cat "$CHALLENGE/out")")"
    appendToDoc "## View Diff"
    appendToDoc "<details><summary>Click me</summary>"
    appendToDoc ""
    appendToDoc "$(codeBlock "$(diff "$CHALLENGE/inp" "$CHALLENGE/out")")"
    appendToDoc "</details>"
    appendToDoc ""
    appendToDoc "## VimGolf Solution"
    appendToDoc "$(codeBlock "$(cat "$CHALLENGE/ans")" sh)"
    appendToDoc "## KdbGolf Solution"
    appendToDoc "$(codeBlock "$(cat "$CHALLENGE/ans.q")" q)"

    echo "Written doc file to: $DOC"
done
