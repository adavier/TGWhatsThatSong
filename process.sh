out=TGWTS.md
rm -f "$out"
for f in Series/*.md
do
    cat "$f" >> "$out"
    echo >> "$out"
done