#!/bin/bash

# Set values for your storage account
subscription_id="206101d3-3848-4560-bb85-c8eea05e9a2e"
azure_storage_account="msbuildchalsearch"
azure_storage_key=

echo "Creating container..."
az storage container create --account-name "$azure_storage_account" --subscription "$subscription_id" --name margies --public-access blob --auth-mode key --account-key "$azure_storage_key" --output none

echo "Uploading files..."
az storage blob upload-batch -d margies -s data --account-name "$azure_storage_account" --auth-mode key --account-key "$azure_storage_key" --output none