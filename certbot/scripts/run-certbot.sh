#!/bin/bash

letsencrypt certonly --webroot -w /var/www/letsencrypt -d "$CN" --agree-tos --email "$EMAIL" --non-interactive --text

cp /etc/letsencrypt/archive/"$CN"/cert.pem /var/certs/cert.pem
cp /etc/letsencrypt/archive/"$CN"/privkey.pem /var/certs/privkey.pem
