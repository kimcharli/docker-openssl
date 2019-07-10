#!/bin/sh

sh /run_create.sh && \
/usr/bin/openssl req -text -noout -verify -in ${KEY_NAME}.csr && \
/usr/bin/openssl rsa -in ${KEY_NAME}.key -check && \
/usr/bin/openssl x509 -in ${KEY_NAME}.crt -text -noout

