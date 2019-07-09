# kimcharli/openssl

use
```bash
docker run --rm -e COMMON_NAME=ccc -e KEY_NAME=kkk -v $(PWD):/certs kimcharli/openssl
```


verification methods
```bash
openssl req -text -noout -verify -in kkk.csr

openssl rsa -in kkk.key -check

openssl x509 -in kkk.crt -text -noout
```

TODO:
- pinpline
