#!/bin/sh

/usr/bin/openssl genrsa -out ${KEY_NAME}.key 4096 && \
/usr/bin/openssl req  -new -newkey rsa:4096 -days 365 -nodes -subj "/C=/ST=/L=/O=/CN=${COMMON_NAME}" -keyout ${KEY_NAME}.key -out ${KEY_NAME}.csr  && \
/usr/bin/openssl x509 -req -days 365 -in ${KEY_NAME}.csr -signkey ${KEY_NAME}.key -out ${KEY_NAME}.crt

