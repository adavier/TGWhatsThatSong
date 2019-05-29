#!/bin/bash
echo "Compiling Series"
out=TGWTS.md
rm -f "$out"
for f in Series/*.md
do
    cat "$f" >> "$out"
    echo >> "$out"
done
if hash pandoc 2>/dev/null; then
	echo "Running Pandoc"
	pandoc -s --self-contained -f gfm --toc -c ./HTML/github-custom.css --metadata pagetitle="Top Gear What's That Song?" "./TGWTS.md" -o ./TGWTS.html
else
	echo "No Pandoc. Not making html"
fi
echo "Done"