#!/bin/bash

USER_NAME=nma
PASSWD=therewasaswaninthepool
CRYPTPASS=`openssl passwd -crypt ${PASSWD}`

echo "${USER_NAME}:${CRYPTPASS}" >> /etc/nginx/.htpasswd