#!/bin/bash

SCRIPT_PATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

COPY_FROM="${SCRIPT_PATH}/ufw/after.rules"
COPY_TO="/etc/ufw/after.rules"

# making a backup copy
cp -R "${COPY_TO}" "${COPY_TO}.copy"

# recursively copy files
cp -R "${COPY_FROM}" "${COPY_TO}"

echo "after.rules have been successfully installed"
