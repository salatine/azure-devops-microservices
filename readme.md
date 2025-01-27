# azure-devops-microservices
This project automates the deployment of a microservices-based, scalable and multi-cloud application across AWS and Azure using Kubernetes. It leverages Terraform for infrastructure provisioning, Docker for containerization, and Helm for managing deployments. The application is also continuously built and deployed through Azure DevOps pipelines, with monitoring and observability set up using Azure Monitor and AWS CloudWatch.

## Overview

Each directory is structured to support multi-cloud deployment and provide a scalable, automated infrastructure for the microservices:
- **infra**: Contains Terraform scripts for provisioning AWS and Azure resources like EKS/AKS, RDS/PostgreSQL, and CloudWatch/Azure Monitor.
- **app**: Holds the microservices (FastAPI and Node.js) along with Dockerfiles and Helm charts for deployment.
- **azure-pipelines**: Includes YAML files for CI/CD pipelines in Azure DevOps, automating the build and deployment processes.

## Running

Clone the repository to your local machine and set up Terraform with your AWS and Azure credentials.
After that, in the directory `infra/` you can run:
```bash
terraform init
terraform apply
```
Set up the Azure DevOps CI/CD pipelines by creating service connections for both AWS and Azure and set them as environment variables as mentioned in the yml files in the `azure-pipelines/` directory. After that, you're good to go and run the pipelines. That's it!

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for details.
