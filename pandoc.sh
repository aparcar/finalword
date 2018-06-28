#!/bin/sh

[ -d /output ] || mkdir /output 

for document in $(find /input -iname "*.md"); do
    dir="$(dirname $document)"
    doc="$(basename $document .md)"
    echo "compiling $doc"

    (cd "$dir" && pandoc --template=eisvogel "$doc.md" -o "/output/$doc.pdf" -N --listings --filter pandoc-citeproc --csl /ieee.csl)
done
