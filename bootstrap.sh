#!/usr/bin/env bash

# Borrowed from @codrcodz for simplicity.

# Ensure script is run as root
if [[ "${EUID}" != "0" ]] || [[ "${#SUDO_USER}" != "0" ]]; then
  echo "Must be run with root permissions.";
  exit 1;
fi

dnf update && dnf install -y python3-pip && pip3 install ansible;
