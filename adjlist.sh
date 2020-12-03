#!/bin/bash
grep 'name="news_keywords"' \
www.spiegel.de/auto/fahrkultur/* \
| grep -o 'content=".*"' \
| grep -o '".*' \
| grep -o '[^"]*' \
| grep "$1" \
| sed 's/, /,/g' \
| sed 's/^\(.*\)'"$1"'\(.*\)$/'"$1"',\1\2/' \
| sed 's/,,/,/;s/,$//'