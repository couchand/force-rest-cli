#!/bin/bash

# Usage:
#   ./get.sh path/to/resource

SID='SALESFORCE_SESSION_ID'
INSTANCE='prerelna1.pre.salesforce.com'

curl "https://$INSTANCE/services/data/v27.0/tooling/$1" -H "Authorization: Bearer $SID"
echo
