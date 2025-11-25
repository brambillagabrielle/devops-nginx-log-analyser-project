#!/bin/bash

# Top 5 IP addresses with the most requests
echo "Top 5 IP addresses with the most requests:"
awk '{ print $1 }' ./nginx-access.log | sort | uniq --count | sort -r | head -n 5 | awk '{ print $2 " - " $1 " request(s)" }'
echo

# Top 5 most requested paths
echo "Top 5 most requested paths:"
cat nginx-access.log | grep -o 'GET /[^ ]*' | sort | uniq -c | sort -r | head -n 5 | awk '{ print $3 " - " $1 " request(s)" }'
echo

# Top 5 response status codes
echo "Top 5 response status codes"
cat nginx-access.log | grep -o 'HTTP/1.1" [0-9][0-9][0-9]' | sort | uniq -c | sort -r | head -n 5 | awk '{ print $3 " - " $1 " request(s)" }'
echo

# Top 5 user agents
echo "Top 5 user agents"
awk -F '"' '{ print $6 }' ./nginx-access.log | sort | uniq --count | sort -r | head -n 5 | awk '{ for(i = 2; i <= NF; i++) printf "%s ", $i; print "- " $1 " request(s)" }'
echo