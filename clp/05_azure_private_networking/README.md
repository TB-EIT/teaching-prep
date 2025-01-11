# Learning Plan

| Topics            | Supplemental Materials                                  | Assignments                                     |
| ----------------- | ------------------------------------------------------- | ----------------------------------------------- |
| Service Endpoints | [YT Video](https://www.youtube.com/watch?v=q8s-zmHighs) | -                                               |
| Private Endpoints | [YT Video](https://www.youtube.com/watch?v=lwLOGsZOV1w) | [See Assignment](#1-service--private-endpoints) |
| Private Links     | [YT Video](https://www.youtube.com/watch?v=57ZwdztCx2w) | -                                               |

## Supplemental Materials

### 1. DevSecOps Tools
* [Docker Scout](https://www.youtube.com/watch?v=0Wc4-_DownU)

## Assignments

### 1. Service & Private Endpoints
0. Capture the screenshots for the below milestones and submit an archive of them to me over Skype.
1. Provision a PaaS resource (I recommend Azure KeyVault) that has networking settings to support IP whitelisting, service endpoints, and private endpoints. Allow public network access at first.
2. Provision a VM (cheapest one) in your custom VNet with a Public IP address.
3. Login to the VM, install Azure CLI on it, use Azure CLI to access some objects in your PaaS resource (password, file, data, etc). Access should be allowed.
4. Disable public network access to your PaaS resource. Try repeating the Step 3. Access should be rejected.
5. Add the public IP address to IP whitelist of your PaaS resource. Try repeating the Step 3. Access should be allowed. Remove the IP address from the whitelist.
6. Deploy a service endpoint to the subnet of your VM. Try repeating the Step 3. Access should be rejected, but the complaint should not be about the public IP address anymore.
7. Whitelist the above subnet in your PaaS resource. Try repeating the Step 3. Access should be allowed. Remove the subnet from the whitelist.
8. Create another subnet to your VNet. Deploy the private endpoint for your PaaS resource. Try repeating the Step 3. Access should be allowed.
