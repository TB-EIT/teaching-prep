# Capstone Projects Guidelines

## Objective
* The capstone project is expected to integrate and synthesize material from the coursework and research to create solutions that address today’s market needs.
* You are expected to use the learnings from the course material to craft a project and experience an entire project cycle, from market research, concept design, technical specification, product development, and testing to pitch / presentation.
* The project's main grading components are the business case, creation process, and solution presentation.

## Timeline and Support
* You will be given two weeks to research, create, and develop the solution and deliver the presentation in a sales pitch style.
* You may seek help from your instructor for technical coaching, your CDM for project management and presentation, and the soft skills coach to support you with the material delivery.
* You are in charge of your own development; you can schedule the sessions with all the support members of our teams. 

## The Audience
* Comprises our senior leadership, your manager, the dean of trainees, and your peers, and we would like you to consider the audience as clients. Again, **the objective of the presentation is to pitch an idea to a client.**

## Coursework Learning Materials Demo Minimal Requirements
Your presentation must demonstrate your mastery of the following things you learned:
1. Azure Platform (at least AKS and ACR)
3. Git (private GitHub and/or Azure DevOps repository)
4. Terraform (at least for AKS provisioning)
5. Build and Deploy a web application that uses a modern web framework (Java Spring, .Net Core, Python Flask/Django, React/Angular, or something similar in complexity).
6. Docker (+ ACR) and Kubernetes (AKS)
7. Azure DevOps
    * CI pipeline (YAML) that automatically triggers on code push to main. Builds a docker image and pushes it to ACR. Shares the k8s and/or Terraformpipeline artifacts with other pipelines.
    * CD pipeline (YAML or Classic Release) that automatically triggers on CI pipeline completion. Provisions infrastructure and deploys the application to AKS in at least two environments. Prod deployment requires manual approval.
    * Infrastructure provisioning can optionally be done with a third pipeline that can be triggered manually.

## Delivery Methods
In your presentation, you are expected to follow the guidelines:
1. Professional attire.
2. Introduce yourself and your professional goals.
3. Presentation slides that must include a Business Proposal / Idea / Pitch for a prospective client.
4. The slides must clear clutter and not be wordy - You are expected to speak to your slides rather than read. Must include a conclusion and business recommendation.
5. Describe the market need for your solutions, your target market, the resolution, and its functionality. 
6. Showcase the solution's architecture diagram, your pipelines, and a detailed explanation of their operation.
7. Live Demo (see below)

### Live Demo
* Showcase your repository, Docker file, Terraform code, k8s manifests, and pipeline files.
* Demonstrate the current state of your application in AKS.
* Push a code commit to your repository that results in a noticeable change of your application's UI.
* Demonstrate the operation of your CI pipeline.
* Demonstrate the operation of your CD pipeline.
* Demonstrate the updated state of your application in AKS.

## Grading
The project is graded on:
1. 40% - Presentation
   * Professional attire
   * Business Proposal / Idea / Pitch quality
   * Slides quality
   * Delivery quality
2. 50% - Implemented Solution Technical Difficulty (per above minimal requirements)
3. 10% - Participation in Q&A for your and your colleagues' presentation  

## Daily Updates
As you work on the project, provide daily updates on your project according to the following milestones (you don't have to work on the milestones in that exact order):
1. [ ] Have a suitable web application that you can build and run locally.
2. [ ] Have a Dockerfile for the above application that you can build and run locally.
3. [ ] Have k8s manifests that can be used to run the application from the local cluster (or manually provisioned AKS cluster).
4. [ ] Have Terraform files to provision an AKS cluster in Azure.
5. [ ] Have a CI YAML pipeline that builds Docker image, pushes it to ACR, and shares Terraform & k8s artifacts with other pipelines. 
6. [ ] Have a CD pipeline that provisions infrastructure and does AKS deployment in at least two environments.
7. [ ] Have the presentation slides ready.
8. [ ] (Optional) Implemented additional features beyond minimal technical requirements.
