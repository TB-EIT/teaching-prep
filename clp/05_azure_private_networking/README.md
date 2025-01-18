# Learning Plan

| Topics            | Supplemental Materials                                       | Assignments                                     |
| ----------------- | ------------------------------------------------------------ | ----------------------------------------------- |
| Service Endpoints | [YT Video](https://www.youtube.com/watch?v=q8s-zmHighs)      | -                                               |
| Private Endpoints | [YT Video](https://www.youtube.com/watch?v=lwLOGsZOV1w)      | [See Assignment](#1-service--private-endpoints) |
| Private DNS Zones | [See Supplemental Material](#1-private-dns-zones)            | [See Assignment](#2-private-dns-zones)          |
| NAT Gateways      | [YT Video](https://youtu.be/AMr_IPk7wyk?si=ATlL73PjUbCy26-E) | [See Assignment](#3-nat-gateways)               |
| Private Links     | [YT Video](https://www.youtube.com/watch?v=57ZwdztCx2w)      | -                                               |
| P2S VPN Gateway   | [YT Video](https://www.youtube.com/watch?v=Z_YjuTt6CXw)      | [See Assignment](#4-p2s-vpn-gateways)           |

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
1. Provision Private DNS zone named <your_name>.org
2. Provision a Vnet with a single subnet.
3. Link your Private DNS zone to your VNet and enable VM auto-registration.
4. Provision two (cheapest) VMs into your subnet. One (VM1) with Public IP address, one without (VM2). Allow SSH/RDP for VM1.
5. Check the Recordsets in your Private DNS zone. Add an A record to map google.<your_name>.org FQDN to one of google.com pubic IPs (use dig/nslookup to find it).
6. Add a CNAME record to map facebook.<your_name>.org to facebook.com
7. SSH/RDP onto VM1. Jump over to VM2 using SSH/RDP and machine's private FQDN (not the IP address).
8. curl google.<your_name>.org, do you get some response from google.com?
9. curl facebook.<your_name>.org, do you get some response from facebook.com?
10. Clean up your Azure resources.

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

### 4. P2S VPN Gateways
0. Capture the screenshots for the below milestones and submit an archive of them to me over Skype.
1. Provision a Vnet with single subnet.
2. Provision a (cheapest) VM with no Public IP address into your subnet. Don't open ports 22/3389 and 80.
3. Add a VPN Gateway subnet to your VNet.
4. Provision a VPN Gateway (VpnGw1 SKU) using the Gateway subnet in your VNet.
5. Generate root and client public and private certificates.
   * [Windows instructions](https://learn.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-certificates-point-to-site)
   * [MacOS/Linux instructions](https://learn.microsoft.com/en-us/azure/vpn-gateway/point-to-site-certificates-linux-openssl)
6. Configure a P2S VPN connection in your VPN gateway using the public root certificate. Use OpenSSL tunnel for Windows/Linux clients and/or IKEv2 tunnel for Windows/MacOS.
   * [End-to-end instructions](https://learn.microsoft.com/en-us/azure/vpn-gateway/point-to-site-certificate-gateway)
7. Install and configure a VPN client on your machine.
   * [Windows Native VPN client](https://learn.microsoft.com/en-us/azure/vpn-gateway/point-to-site-vpn-client-certificate-windows-native)
   * [Windows OpenVPN V3 client](https://learn.microsoft.com/en-us/azure/vpn-gateway/point-to-site-vpn-client-certificate-windows-openvpn-client-version-3)
   * [MacOS Native VPN client](https://learn.microsoft.com/en-us/azure/vpn-gateway/point-to-site-vpn-client-cert-mac)
   * [Linux OpenVPN client](https://learn.microsoft.com/en-us/azure/vpn-gateway/point-to-site-vpn-client-certificate-openvpn-linux)
8. Connect to your VPN Gateway using your VPN client.
9. SSH/RDP to your VPN using its private IP address. Install a web-server (Nginx/Apache/IIS) on your VM.
10. Open your web-server main page from your laptop browser using its private IP address.
11. Clean up the resources.
