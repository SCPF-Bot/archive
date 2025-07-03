#!/bin/bash

if [ ! -f url.txt ]; then
  echo "url.txt not found!"
  exit 1
fi

while IFS= read -r url; do
  [ -z "$url" ] && continue
  wget -c "$url"
done < url.txt
