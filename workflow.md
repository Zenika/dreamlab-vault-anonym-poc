# Workflow on new app joining DMS

_WIP_

## New data entry in DMS
 - ProducerApp registers to ID+C, returns UUID
 - User uses ProducerApp for first time, asked for consent on personal data
 - ID+C provides key for personal data encryption (user and data type specific)
 - Object with ProducerApp ID, User ID, personal data type and key is stored to DMS
 - Personal data is sent to `transit` via ID+C for encryption with provided key
 - ID+C send encrypted data for storage to DMS

## Personal data retrieval
 - ConsumerApp asks for personal data on User
 - ID+C checks if ConsumerApp is registered
 - ID+C then checks if data type, User ID and key are present in DMS, retrieves key
 - ID+C gets encrypted data from DMS, forward it to `transit` with key for decryption
 - ID+C sends decrypted date to ConsumerApp
