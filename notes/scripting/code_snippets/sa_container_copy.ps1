# This script requires SA_NAME environment variable to be set with the Storage Account name value.
# This script requires SA_KEY environment variable to be set with the Storage Account key value.

# We'll try to copy over contents of one SA containet into another container of same SA

# Need to do the below outside of this script
# Connect-AzAccount
# Set-AzContext -SubscriptionId "your-subscription-id"

$storageAccountName = $Env:SA_NAME
$storageAccountKey = $Env:SA_KEY
$storageContext = New-AzStorageContext -StorageAccountName $storageAccountName -StorageAccountKey $storageAccountKey

# Set the container names
$sourceContainerName = "source-container"
$destContainerName = "dest-container"

# Get the list of blobs in the source container
$blobs = Get-AzStorageBlob -Container $sourceContainerName -Context $storageContext | Select-Object Name

# For each blob in the list upload its copy to the destination container
foreach ($b in $blobs) {
  Start-AzStorageBlobCopy `
    -SrcContainer $sourceContainerName `
    -SrcBlob $b.Name `
    -Context $storageContext `
    -DestContainer $destContainerName `
    -DestBlob $b.Name
}
