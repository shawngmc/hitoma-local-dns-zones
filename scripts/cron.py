#!/usr/bin/env python3

# Load last pulled ver
last_pulled_ver=$(cat lastver)

# Check if a new release exists
latest_response=$(curl -s https://api.github.com/repos/shawngmc/hitoma-local-dns-zones/releases/latest)
latest_name=$(echo $latest_response | jq ".name")
latest_ver_string="${latest_name#"DNS Zones v"}"

# If a new release exists
# Backup the existing release
# Pull the release file
# Explode it
# Verify it
# Stage the contents
# Restart named
systemctl restart named
# Set the last pulled ver
