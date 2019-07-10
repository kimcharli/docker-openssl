# kimcharli/openssl


Create private key, csr, and crt files.

- COMMON_NAME: CN for the CSR
- KEY_NAME: file name for the files

Example of docker command creating files in current working directory (${PWD})
```bash
docker run --rm -e COMMON_NAME=ccc -e KEY_NAME=kkk -v $(PWD):/work kimcharli/openssl
```

Do same with docker-compose.
```bash
docker-compose run --rm -e COMMON_NAME=ccc -e KEY_NAME=kkk openssl 
```

