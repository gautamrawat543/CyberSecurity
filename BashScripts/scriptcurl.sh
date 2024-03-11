#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <domain> <wordlist>"
    exit 1
fi

domain="$1"
wordlist="$2"

output_file="subdomains_founds.txt"
> "$output_file"

while IFS= read -r subdomain; do
    full_domain="${subdomain}.${domain}"
    ip=$(curl -sI "$full_domain" | grep -i 'Location' | awk '{print $2}')

    if [ -n "$ip" ]; then
        echo "[+] Found subdomain: $full_domain"
        echo "  Domain Url: $full_domain" >> "$output_file"
    fi
done < "$wordlist"

echo "Results saved in $output_file"
