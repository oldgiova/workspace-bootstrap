#!/bin/bash

# this script is intended to be idempotent


# finding release name
. /etc/os-release
RELEASE=${NAME,,}_${VERSION_CODENAME,,}
RELEASE="${RELEASE// /_}"
RELEASE="${RELEASE//\//_}"

if [[ -d ansible ]]; then
  cd ansible
fi

if [[ ! -f ${RELEASE}.yml ]]; then
  echo ""
  echo "[ERROR] Release ${RELEASE} not supported yet."
  exit 0
fi

# ansible run
ansible-playbook ${RELEASE}.yml -i 127.0.0.1 -vv
