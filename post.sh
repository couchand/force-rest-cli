#!/bin/bash

# Usage:
#   ./post.sh path/to/resource data_to_post.json HTTP_METHOD

curl "https://$INSTANCE_URL/services/data/v27.0/$1" -H "Authorization: Bearer $FORCE_SID" -H 'Content-Type: application/json' -X $3 -d @$2
echo
