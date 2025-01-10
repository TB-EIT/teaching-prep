# Learning Plan

| Topics                           | Supplemental Materials                                       | Assignments                                                     |
| -------------------------------- | ------------------------------------------------------------ | --------------------------------------------------------------- |
| SRE Responsibilities             | [YT Video](https://youtu.be/OnK4IKgLl24?si=Q3yrVyjAq2Dq-2LR) | -                                                               |
| Metrics vs Logs vs Traces        | [YT Video](https://www.youtube.com/watch?v=juP9VApKy_I)      | -                                                               |
| Counters vs Gauges vs Histograms | [YT Video](https://www.youtube.com/watch?v=fhx0ehppMGM)      | -                                                               |
| Azure APM Services               | [See Suplemental Materials](#1-azure-apm-services)           | [See Assignment](#1-azure-built-in-logs-metrics-and-dashboards) |
| Open Telemetry                   | [YT Video](https://www.youtube.com/watch?v=r8UvWSX3KA8)      | -                                                               |
| Prometheus & Grafana             | [YT Video](https://www.youtube.com/watch?v=r8UvWSX3KA8)      | [TODO Assignment](#2-custom-logs-metrics-and-traces)            |
| Azure Backup & Site Recovery     | [YT Video]()                                                 | [See Assignment](#3-azure-backup--site-recovery)                                                                |

## Supplemental Materials

### 1. Azure APM Services
* [Azure Monitor](https://youtu.be/v68jL-l9Fww?si=myORf-hjHfA7tOzG)
* [Azure Log Analytics Workspace](https://youtu.be/2ZZrNiXxk28?si=sGqS7LhnlW7n1ujE)
* [Basics of Kusto Query Language](https://www.youtube.com/watch?v=ImqRQJfnSHM)
* [Azure Dashboards](https://www.youtube.com/watch?v=CE6aieJ1sJo)
* [Azure Appication Insights](https://www.youtube.com/watch?v=A0jAeGf2zUQ)
* [Master Class](https://youtu.be/hTS8jXEX_88?si=c4f6kPXOFS-6bI1a)

### 2. Azure Backup & Site Recovery Videos
* [Azure Backup](https://www.youtube.com/watch?v=j_1zBGk3LWY)
* [Azure Site Recovery](https://www.youtube.com/watch?v=GSvxODjTzjI)
* [Disaster Recovery in Microsoft Azure](https://youtu.be/8fvO3WArG-Y?si=P9e9Q6nrgawFbyRx)
* [Azure Site Recovery Deep Dive](https://www.youtube.com/watch?v=H5vhu_NYqbU)

## Assignments

### 1. Azure Built-in Logs, Metrics, and Dashboards
0. Capture the screenshots as you progress, submit a zip with them to me over Skype personally, once you're done.
1. Provision an application/compute service of your choice (not AKS) and deploy an application of your choosing onto it (hello world/starter application is fine).
2. Adjust the diagnostic setting of your application/compute service to collect all the possible logs and store them into your Log Analytics Workspace.
3. As you test your application, observe its Azure Monitor metrics and place a number of most relevant metrics (at least three) on your new Azure Dashboard.
4. Configure a metric-based alarm for your application, trigger it, and demonstrate the notifications being sent to your email.
5. Configure a log-query-based alarm for your application, trigger it, and demonstrate the notifications being sent to your email.
6. Cleanup your resources.

### 2. Custom Logs, Metrics, and Traces
0. TODO

### 3. Azure Backup & Site Recovery
0. Capture the screenshots as you progress, submit a zip with them to me over Skype personally, once you're done.
1. Create a VM (Ubuntu 22, Standard Security type worked for me) in a primary region (East US should work).
2. Login onto the VM, install a web-server and create some files on the machine.
3. Create a Azure Backup vault in the same region where the VM is.
4. Configure the VM Backup using the vault.
5. Test recovering the VM from the backup. Check that the web server and files still present on the machine.
6. Create an Azure Sire Recovery vault in the secondary region (West US 3 worked for me).
7. Create a VM replication from the primary region.
8. Demonstrate Test Failover, Test Failover Cleanup, Failover, Commit, Re-Protect steps. Verify that the recovered machines have the web-servers and your files on them.
9. Delete both the Backup and Site Recovery vaults using Azure generated power-shell scripts. Delete the VMs as well.
