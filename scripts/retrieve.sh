#!/bin/bash
# retrieve process for salesforce

echo "Retrieve Target Org: [Dev]"
echo "[retrieving...]"

ant retrieve -propertyfile "./salesforce.properties.dev"