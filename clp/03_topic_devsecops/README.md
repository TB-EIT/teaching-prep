# Learning Plan

| Topics             | Supplemental Materials                                       | Assignments                             |
| ------------------ | ------------------------------------------------------------ | --------------------------------------- |
| DevSecOps Overview | [YT Video](https://youtu.be/gLJdrXPn0ns?si=ai_OP2Lg4u0Fcpsd) | -                                       |
| DevSecOps Tools    | [See Suplemental Material](#1-devsecops-tools)               | -                                       |
| DevSecOps Pipeline | [See Suplemental Material](#2-devsecops-pipeline)            | [See Assignment](#1-devsecops-pipeline) |

## Supplemental Materials

### 1. DevSecOps Tools
* [Docker Scout](https://www.youtube.com/watch?v=0Wc4-_DownU)
* [SonarQube](https://www.youtube.com/watch?v=AYUaIiWZ-_w)
* [Trivy for Terraform Scanning](https://www.youtube.com/watch?v=BWp5JLXkbBc)
* [OWASP ZAP](https://www.youtube.com/watch?v=tpZ9muBTAHQ)
* [Azure Sentinel](https://www.youtube.com/watch?v=4tEdzuUu_OU)

### 2. DevSecOps Pipeline
* [GitHub Actions](https://youtu.be/R8_veQiYBjI?si=T5nT-H8pyyi_hfvH)
* [Terraform Cloud](https://www.youtube.com/watch?v=iewk-BkJpdU)
* [Azure Verified Modules](https://www.youtube.com/watch?v=JbIMrJKW5N0)
* [Azure Naming Module](https://www.youtube.com/watch?v=FJilCM2j7Ag)
* [GitHub Actions Reusable Workflows and Composite Actions](https://www.youtube.com/watch?v=ciHJzV6TZB8)

## Assignments

### 1. DevSecOps Pipeline
0. Capture the screenshots for the below milestones and submit an archive of them to me over Skype.
1. Pick a Vulnerable Web Application from the directory above. Fork its GitHub repository. Make sure you can launch it locally either directly or via Docker.
2. Build a GitHub Actions CI/CD DevSecOps pipeline for the above application satisfying the below requirements.
3. CI Pipeline does SAST scanning of the application source-code with SonarCloud (or a suitable alternative).
4. CI Pipeline does Docker image scanning with Docker Scout (or a suitable alternative).
5. Implement Terraform configuration for the infrastructure to host your application (something lightweight, not AKS). Try using Azure Verified Modules, Azure Naming Module, and Terraform cloud.
6. CI Pipeline does Terraform Infrastructure scanning with Trivy (or a suitable alternative).
7. CD Pipeline does the Infrastructure provisioning and application Deployment in test and prod environment. (Re)Use custom github action to do the above steps in both environments.
8. CD Pipeline does DAST scanning of the running application with OWASP ZAP (or a suitable alternative).

Feel free to use my GitHub repo as an inspiration, just don't mindlessly copy everything from there - https://github.com/BasiukTV/devsecops-sandbox-juice-shop
