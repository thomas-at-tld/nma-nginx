#!/bin/bash

USER_NAME=nma
PASSWD=retepasjak
CRYPTPASS=`openssl passwd -crypt ${PASSWD}`

echo "${USER_NAME}:${CRYPTPASS}" >> /etc/nginx/.htpasswd