#!/usr/bin/env bash
for CHALLENGE in "$@"
do
    DOC="$CHALLENGE/doc.md"
    appendToDoc() {
        echo -e "${1}" >> "$DOC"
    }
    codeBlock() {
        echo -e '```'"$2"'\n'"${1}"'\n```'
    }

    rm -f "$DOC" && touch "$DOC"
    appendToDoc "# $CHALLENGE"
    appendToDoc "## Start file"
    appendToDoc "$(codeBlock "$(cat "$CHALLENGE/inp")")"
    appendToDoc "## End file"
    appendToDoc "$(codeBlock "$(cat "$CHALLENGE/out")")"
    appendToDoc "## View Diff"
    appendToDoc "<details><summary>Click me</summary>\n"
    appendToDoc "$(codeBlock "$(diff "$CHALLENGE/inp" "$CHALLENGE/out")")"
    appendToDoc "</details>"
    appendToDoc "## Solution"
    appendToDoc "$(codeBlock "$(cat "$CHALLENGE/ans")" sh)"

    echo "Written doc file to: $DOC"
done
