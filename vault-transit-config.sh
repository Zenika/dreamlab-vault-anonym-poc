#! /bin/bash
export VAULT_ADDR='http://127.0.0.1:8200'
# Add the admin policy to ensure you can run the `transit` command:
vault policy write admin admin-policy.hcl
# Success! Uploaded policy: admin

# Enable transit engine and create a key ring:

vault secrets enable transit
vault write -f transit/keys/orders
vault status
