#!/bin/bash

# create users with  basic auth
# user list
USERS=("developer99" "devops007" "operations777" "infosec001")

# func for pass generations
function genpass {
  openssl rand -base64 12
  return 0
}

echo "Creating temp file for credentials..."
CRED_TEMP_FILE=$(mktemp)
trap 'rm -f "$CRED_TEMP_FILE"' EXIT

echo "Creating users..."
for USER in "${USERS[@]}"; do
  PASSWORD=$(genpass)
  kubectl config set-credentials "$USER" --username="$USER" --password="$PASSWORD"
  echo "$USER:$PASSWORD" >> "$CRED_TEMP_FILE"
done

echo ""
echo "New users:"
echo "-----------------------------"
cat "$CRED_TEMP_FILE" | while read -r line; do
  echo "${line%:*} - ${line#*:}"
done