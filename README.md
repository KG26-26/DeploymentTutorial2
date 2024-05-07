# Java Containerized Application Deployment in Kubernetes

This repository contains the deployment files and instructions for deploying a Java application as a container in Kubernetes using Jenkins, GitHub, Docker, and Kubernetes.

## Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Project Structure](#project-structure)
- [Deployment Steps](#deployment-steps)
- [Configuration](#configuration)
- [Accessing the Application](#accessing-the-application)
- [Cleaning Up](#cleaning-up)


## Overview

This project demonstrates the deployment of a Java application as a container in Kubernetes using a CI/CD pipeline with Jenkins, GitHub for version control, Docker for containerization, and Kubernetes for orchestration.

## Prerequisites

Before you begin, ensure you have the following prerequisites:

- Jenkins CI/CD pipeline configured with appropriate plugins and credentials.
- Docker installed on the Jenkins server or build machine.
- GitHub repository for your Java application code.
- Kubernetes cluster configured and accessible from Jenkins.

## Project Structure

The project structure is as follows:

```
java-containerized-app/
├── Dockerfile
├── src/
│   ├── main ----
│   └── java - file ----
└── README.md
├── deploymentservice.yaml
├── kubernetes-cd.hpi
├── mvnw
├── mvnw.cmd
└── pom.xml
```

- `Dockerfile`: Contains instructions to build the Docker image for the Java application.
- `deploymentservice.yaml`: To create Deployement and Services in Kubernetes.
- `pom.xml`: java dependenices to run this application
- `Jenkins file/`: To create a pipeline for each stages.
- `README.md`: Instructions and documentation (you're reading it now).

## Deployment Steps

1. Clone this repository to your Jenkins workspace or build machine:

   ```bash
   git clone https://github.com/your/repository.git
   ```

2. Configure Jenkins pipeline to build the Docker image using the provided Dockerfile.
3. Push the Docker image to a Docker registry (e.g., Docker Hub, AWS ECR).
4. Update Kubernetes deployment and service files (`deployment.yaml`, `service.yaml`) with your Docker image details.
5. Configure Jenkins to apply the Kubernetes deployment and service using kubectl commands.

## Configuration

### Jenkins Pipeline Configuration

- Set up a Jenkins pipeline with stages for building the Docker image, pushing to the registry, and deploying to Kubernetes.
- Use Jenkins environment variables or credentials to store sensitive information such as Docker registry credentials.

### Kubernetes Configuration

- Update `deployment.yaml` with your Docker image repository and tag.
- Define Kubernetes resources such as CPU, memory limits, environment variables, etc., in the deployment file.
- Modify `service.yaml` for exposing the application via a Kubernetes service.

## Accessing the Application

After successful deployment, access the Java application using the provided service URL or external IP exposed by Kubernetes.

## Cleaning Up

To clean up resources:

1. Delete the Kubernetes deployment and service:

   ```bash
   kubectl delete -f kubernetes/deployment.yaml
   kubectl delete -f kubernetes/service.yaml
   ```

2. Remove the Docker image from the registry if no longer needed.
