# Azure DevOps

## General

### Questions

| Can Answer? | # | Question |
| --- | --- | --- |
| <input type="checkbox"> | 1 | What is DevOps? How does it help? |
| <input type="checkbox"> | 2 | What tools are available in Azure DevOps? |
| <input type="checkbox"> | 3 | What are the popular alternatives to Azure DevOps boards? |

### Azure DevOps CI/CD Pipeline Assignments
| Done? | # | Assignment |
| --- | --- | --- |
| <input type="checkbox"> | 1 | Configure your CI pipeline to be triggered automatically on code push to main branch of your repository. Demonstrate with the screenshots. |
| <input type="checkbox"> | 2 | Your CI pipeline has to download (restore) some application dependencies, (if required) compile the application, and publish one (or multiple) artifact used by the CD pipeline to provision the infrastructure and deploy the application. Demonstrate with the screenshots. |
| <input type="checkbox"> | 3 | Your CD pipeline must have at least two stages: dev and prod environments. You can use Azure DevOps either YAML defined or Release pipeline here. Demonstrate with the screenshots. |
| <input type="checkbox"> | 4 | CD pipeline must be separate from CI pipeline, must be triggered automatically as soon as CI pipeline is done, deployment to prod stage must have manual pre-approval step. Demonstrate with the screenshots. |
| <input type="checkbox"> | 5 | Deployment to each stage much be preceded with infrastructure provisioning step using ARM/Terraform/BICEP templates. Demonstrate with the screenshots. |
| <input type="checkbox"> | 6 | Post the infrastructure provisioning the latest version of the application must be deployed onto it in dev and prod environments. Demonstrate with the screenshots. |
| <input type="checkbox"> | 7 | Push the code change to your repository main branch which results in a demonstrable update to your application. Demonstrate with the screenshots that updates going through CI and CD stages of your pipeline, and showing up in the deployed dev and prod versions of your application. |
| <input type="checkbox"> | 8 | Implement an additional CI/CD pipeline feature of your choice covered by AZ-400 course and not required by preceding assignments. Demonstrate with the screenshots. |
