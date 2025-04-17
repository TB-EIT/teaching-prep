# Advanced k8s Learning Plan

| Topics | Supplemental Materials                         | Assignments                           |
| ------ | ---------------------------------------------- | ------------------------------------- |
| Helm   | [See Supplemental Material](#1-helm-materials) | [See Assignment](#1-helm-assignment) |

## Supplemental Materials

### 1. Helm Materials
* [Oficial Documentation](https://helm.sh/docs/)
* [YouTube Tutorial](https://youtu.be/DQk8HOVlumI?si=81GsMy165ChZp2GH)
* [Udemy Course](https://www.udemy.com/course/helm-kubernetes-packaging-manager-for-developers-and-devops)

## Assignments

### 1. Helm Assignment
1. Capture the screenshots for the milestones below and submit an archive to me.
2. Prepare a list of k8s manifests for an application deployment (at least a Deployment and a Service). Test them out against a (local) k8s cluster using kubectl commands.
3. Install [Helm](https://helm.sh/docs/intro/install/) on your machine.
4. Create a minimal Helm chart.
    * Create a folder, and ```templates/``` subfolder.
    * Copy over k8s manifest into the ```templates/``` subfolder.
    * Add a minimal ```Chart.yaml``` [file](https://helm.sh/docs/topics/charts/#the-chartyaml-file) to your folder.
5. Install your chart with ```helm install``` command and validate that your application still works.
6. Add ```values.yaml``` file, populate it with sample values, and use them with {{ .Values.* }} placeholders in your k8s manifests in your ```templates/``` subfolder.
7. Update your chart with ```helm upgrade``` command and validate that your application still works.
8. Clean up the resources.
