#!/bin/sh

# Decrypt the file
mkdir $HOME/secrets
# --batch to prevent interactive command
# --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="$CLAVE_PROD" \
--output $HOME/secrets/secret-prod.json secret-prod.json.gpg
