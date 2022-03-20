#!/bin/sh

# Decrypt the file
mkdir $HOME/secrets
# --batch to prevent interactive command
# --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="$TEST_CLAVE" \
--output $HOME/secrets/secret-test.json secret-test.json.gpg
