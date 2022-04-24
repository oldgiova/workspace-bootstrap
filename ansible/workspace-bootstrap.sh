#!/bin/bash

# this script is intended to be idempotent


# finding release name
. /etc/os-release
RELEASE=${NAME,,}_${VERSION_CODENAME,,}

if [[ $(basename ${PWD}) == "workspace-bootstrap"  ]]; then
  cd ansible
fi

if [[ ! -f ${RELEASE}.yml ]]; then
  echo ""
  echo "[ERROR] Release ${NAME} ${VERSION_CODENAME} not supported yet."
  exit 0
fi

# ansible run
ansible-playbook ${RELEASE}.yml -i 127.0.0.1 -vv
