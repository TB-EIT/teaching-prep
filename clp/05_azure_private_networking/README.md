# Learning Plan

| Topics            | Supplemental Materials                                       | Assignments                                     |
| ----------------- | ------------------------------------------------------------ | ----------------------------------------------- |
| Service Endpoints | [YT Video](https://www.youtube.com/watch?v=q8s-zmHighs)      | -                                               |
| Private Endpoints | [YT Video](https://www.youtube.com/watch?v=lwLOGsZOV1w)      | [See Assignment](#1-service--private-endpoints) |
| Private DNS Zones | [See Supplemental Material](#1-private-dns-zones)            | [See Assignment](#2-private-dns-zones)          |
| NAT Gateways      | [YT Video](https://youtu.be/AMr_IPk7wyk?si=ATlL73PjUbCy26-E) | [See Assignment](#3-nat-gateways)               |
| Private Links     | [YT Video](https://www.youtube.com/watch?v=57ZwdztCx2w)      | -                                               |

## Supplemental Materials

### 1. Private DNS Zones
* [How DNS Works](https://www.youtube.com/watch?v=Ah7fYex6Ups)
* [DNS Records Explained](https://www.youtube.com/watch?v=HnUDtycXSNE)
* [Understanding DNS in Azure](https://www.youtube.com/watch?v=Hiohn35DIqA)
* [Mastering Azure Private DNS](https://www.youtube.com/watch?v=iz3MyO69YZU)

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
9. Clean up the resources.

### 2. Private DNS Zones
0. Capture the screenshots for the below milestones and submit an archive of them to me over Skype.
1. TODO

### 3. NAT Gateways
0. Capture the screenshots for the below milestones and submit an archive of them to me over Skype.
1. Provision a VNet and Subnet. Provision two VMs into it. One with Public IP address, and one without.
2. Provision a PaaS resource that supports network access settings (Storage Account, KeyVault, Azure SQL DB, etc). Disable the public internet access to the resourse.
3. SSH/RDP onto the VM with public IP address. Use Azure CLI to attempt access to your PaaS resource.
4. From the first VM, SSH/RDP onto the VM without the public IP address. Use Azure CLI to attempt access to your PaaS resource.
5. Deploy a NAT gateway to the VMs subnet.
6. Whitelist the NAT gateway Outbound IP address in the PaaS resource network settings.
7. Repeat steps 3 and 4. Access should be allowed now.
8. Clean up the resources.
