#!/bin/bash

HOSTS_URL="https://github-hosts.tinsfox.com/hosts"
TEMP_FILE="/tmp/github_hosts.tmp"
curl -o "$TEMP_FILE" "$HOSTS_URL"
if [ $? -ne 0 ]; then
    exit 1
fi
sudo sed -i '/# GitHub Host Start/,/# GitHub Host End/d' /etc/hosts
{
    echo "# GitHub Host Start"
    cat "$TEMP_FILE"
    echo "# GitHub Host End"
} | sudo tee -a /etc/hosts > /dev/null
rm -f "$TEMP_FILE"
