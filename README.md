# Deployment on Kubernetes using Terraform

This Terraform project automates the deployment of an any application on a Kubernetes cluster. It creates a namespace, deploys the any application with a specified number of replicas, and configures the deployment based on the variables provided.

## Project Structure

```bash
nginx-kubernetes-deployment/
├── main.tf            
├── variables.tf       
├── outputs.tf         
└── terraform.tfvars  

# Variables

This project makes use of the following variables, which are defined in variables.tf:

namespace: The namespace where the Nginx application will be deployed.
app: The name of the application .
image: The Docker image to use for the deployment 
replicas: Number of replicas for the deployment 
container_port: The container port that Nginx will listen on
