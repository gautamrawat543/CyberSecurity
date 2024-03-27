#!/bin/bash

# Specify the wordlist file containing domain names
wordlist="wordlist.txt"

# Output file to store vulnerable domains
output_file="founddmarcvuln.txt"

# Clear the output file
> "$output_file"

# Loop through each domain in the wordlist
while IFS= read -r domain || [[ -n "$domain" ]]; do
    # Query for DMARC records
    dmarc_result=$(dig +short "_dmarc.$domain" TXT)

    # Check if the result is empty (no DMARC record found)
    if [ -z "$dmarc_result" ]; then
        echo "$domain" >> "$output_file"  # DMARC record not found, so the domain is vulnerable
    else
        # Check if "p=none" exists in the DMARC record
        if grep -q "p=none" <<< "$dmarc_result"; then
            echo "$domain" >> "$output_file"  # If "p=none" is found, the domain is vulnerable
        fi
    fi
done < "$wordlist"
