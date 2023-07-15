#!/bin/bash

# Check if the required command 'soffice' is available
command -v soffice >/dev/null 2>&1 || { echo >&2 "LibreOffice is not installed. Aborting."; exit 1; }

# Check if the input file is provided
if [ $# -eq 0 ]; then
    echo "Please provide the PDF file to convert."
    exit 1
fi

# Input and output file paths
input_file="$1"
output_file="${input_file%.*}.docx"  # Change the extension to .odt if you want ODT format

# Convert PDF to the desired format using LibreOffice
soffice --headless --convert-to docx "$input_file" --outdir "$(dirname "$input_file")"

# Check if the conversion was successful
if [ $? -eq 0 ]; then
    echo "Conversion complete. Output file: $output_file"
else
    echo "Conversion failed."
fi

# ./pdf_to_docx.sh input.pdf