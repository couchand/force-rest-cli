#!/bin/bash

# Usage:
#   ./post.sh path/to/resource data_to_post.json HTTP_METHOD

SID='SALESFORCE_SESSION_ID'
INSTANCE='prerelna1.pre.salesforce.com'

curl "https://$INSTANCE/services/data/v27.0/tooling/$1" -H "Authorization: Bearer $SID" -H 'Content-Type: application/json' -X $3 -d @$2
echo
