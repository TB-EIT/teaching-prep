# Azure Policy

## Learning Materials

### YouTube Videos
* Quick Overview - [AZ-900 Episode 31 | Azure Policy](https://www.youtube.com/watch?v=9WO4EBgUJXk)
* Conceptual Deep Dive Video - [Anatomy of Azure Policy](https://www.youtube.com/watch?v=4wGns611G4w)

## Assignments

### Policy Assignment

0. Take screenshots as you proceed with the steps below. Submit an Archive with them once you're done.
1. Provision a resource group (RG) from the Azure Portal.
2. Provision a storage account (SA) that accepts connections over HTTP into that RG.
  * Uncheck "Require secure transfer for REST API operations" in Advanced tab during the resource configuration.
3. Find the Azure Policy Definition named 'Configure secure transfer of data on a storage account' and assign it to the RG in Audit mode (disable enforcement).
4. Navigate to the Compliance tab of Azure Policy and see if your SA is out of compliance (might take up to an hour to get updated).
5. Provision another storage account (SA) that accepts connections over HTTP into your RG. Can you do it? Did anything change in the compliance tab?
6. Now switch your policy assignment into the Enforcement mode. What happened? Any SA were deleted? Compliance status change?
7. Provision another storage account (SA) that accepts connections over HTTP into your RG. Can you do it? Did anything change in the compliance tab?
8. Delete all but one SA and switch it to only accept connection over HTTPS. Did anything change in the compliance tab?
9. Delete the RG.
