#!/bin/bash

# Usage:
#   ./get.sh path/to/resource

curl "https://$INSTANCE_URL/services/data/v27.0/$1" -H "Authorization: Bearer $FORCE_SID"
echo
