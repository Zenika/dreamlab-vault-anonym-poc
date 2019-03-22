# POC on Encryption-as-a-service with Vault

This is a test on a service to encrypt/decrypt personal data with consent management system via a Vault server.
The main idea is to use Vault as a system to anonymize personal data stored by the DMS and decrypt it on request. It adds the possibility to suppress the decryption key, effectively disconnecting data from the related user, hence equivalent to deleting it.

## Steps to run the project:

First, get the relevant package for your architecture and add the binary to your PATH: https://www.vaultproject.io/downloads.html

Verify the install by running the `vault` command, it should display usage

_You can run the_ `vault -autocomplete-install` _and restart your terminal to have autocompletion on commands_


vault policy write admin admin-policy.hcl
Success! Uploaded policy: admin

