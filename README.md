# POC on Encryption-as-a-service with Vault

This is a test on a service to encrypt/decrypt personal data with consent management system via a Vault server.
The main idea is to use Vault as a system to anonymize personal data stored by the DMS and decrypt it on request. It adds the possibility to suppress the decryption key, effectively disconnecting data from the related user, hence equivalent to deleting it.

## Steps to run the project:

First, get the relevant package for your architecture and add the binary to your PATH: https://www.vaultproject.io/downloads.html

Verify the install by running the `vault` command, it should display usage

_You can run the_ `vault -autocomplete-install` _and restart your terminal to have autocompletion on commands_

You can then launch the vault server, add the address to your path and check the status:

`vault server -dev` _launched in a separate terminal_

```
export VAULT_ADDR='http://127.0.0.1:8200'
vault status
```
Add the admin policy to ensure you can run the `transit` command:

```
vault policy write admin admin-policy.hcl
Success! Uploaded policy: admin
```
TODO:
 - [ ] Continue to describe porcedure for `transit` configuration
 - [ ] Add architecure diagram for data flow between the DMS and Vault server
 - [ ] Create a small NodeJs app to simulate persitance (DMS)
 - [ ] Create a small NodeJs app to simulate an app requesting data to persistance (Consumer)
 - [ ] Create a small NodeJs app to simulate an app producing personal data (Producer) with consent approval
 - [ ] Experiment with consent removal and procedure to ensure flow with non accessible data

