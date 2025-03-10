# Azure Disk

## Assignments

### New Managed Disk (Ubuntu)
0. Collect the screenshots as you complete the below assignments, and submit them in a zip archive after you're done.
1. Create an Ubuntu VM with just a System Disk and ability to SSH to it.
2. Create a new managed disk in Azure using the Azure Portal.
3. Attach the disk to an existing Ubuntu VM in Azure using the Azure Portal.
4. Create a partition on the new disk using ```fdisk``` command.
5. Format the partition with the ```mkfs.ext4``` command.
6. Mount the disk using ```mount``` command.
7. Verify you can write and read files to/from the new disk partition.
8. (Bonus) Ensure the disk mounts automatically after a reboot by editing ```/etc/fstab``` with the appropriate entry.
9. Clean up the resources.
