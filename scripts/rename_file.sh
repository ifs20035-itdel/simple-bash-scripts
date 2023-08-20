#!/bin/bash

## WARNING
## NOT TESTED YET

echo "Enter regex:"
read file_regex
echo "Regex need to remove:"
read regex_cond

for file in $file_regex; do
    new_name="${file_regex#$regex_cond }"
    mv "$file_regex" "$new_name"
done
