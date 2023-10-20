#!/bin/bash

# URL list file
url_file="daftar_santri.txt"

# Iterate over URLs and perform web scraping
while read url; do
    python scrape.py "$url"
done < "$url_file"

