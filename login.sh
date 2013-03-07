#!/bin/bash

# Usage:
#   ./login.sh USERNAME PASSWORD

CLIENT_ID='3MVG9yZ.WNe6byQCTQznkaQjWdvixcS210g17ZTxkjzYHiuXmdBZYfHvckm2cjAn_ucpZpgQKHrFkO3uvA2RY'
CLIENT_SECRET='5872188906151811379'
LOGIN_URL='login.salesforce.com'
export INSTANCE_URL='na7.salesforce.com'

export FORCE_SID=`curl -X POST https://$LOGIN_URL/services/oauth2/token -d "grant_type=password&client_id=$CLIENT_ID&client_secret=$CLIENT_SECRET&username=$1&password=$2" 2> /dev/null | sed 's/.*"access_token":"\([^"]*\)".*/\1/'`
