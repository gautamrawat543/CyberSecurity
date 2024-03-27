#!/bin/bash

# Wordlist file containing domain names to query
wordlist="founddmarcvuln.txt"

# Output file to store domains with soft fail
output_file="softfaildomains.txt"

# Function to check SPF record for a domain and add it to the output file if soft fail is found
check_spf_record() {
    local domain="$1"
    # Check if SPF record is found
    if dig +short "$domain" TXT | grep -q "v=spf1"; then
        # Check if "~all" is found in SPF record
        if dig +short "$domain" TXT | grep -q "~all"; then
            echo "Soft fail found for $domain"
            echo "$domain" >> "$output_file"  # Add domain to output file if soft fail is found
        else
            echo "SPF record found, but neither ~all nor -all present for $domain"
        fi
    else
        echo "SPF record not found for $domain"
    fi
}

# Clear the output file
> "$output_file"

# Loop through each domain in the wordlist
while IFS= read -r domain || [[ -n "$domain" ]]; do
    # Check SPF record for the current domain
    check_spf_record "$domain"
done < "$wordlist"
