#!/bin/bash

# Usage:
#   ./login.sh USERNAME PASSWORD

CLIENT_ID='YOUR_CLIENT_ID_HERE'
CLIENT_SECRET='YOUR_CLIENT_SECRET_HERE'
LOGIN_URL='login.salesforce.com'
export INSTANCE_URL='na7.salesforce.com'

export FORCE_SID=`curl -X POST https://$LOGIN_URL/services/oauth2/token -d "grant_type=password&client_id=$CLIENT_ID&client_secret=$CLIENT_SECRET&username=$1&password=$2" 2> /dev/null | sed 's/.*"access_token":"\([^"]*\)".*/\1/'`
