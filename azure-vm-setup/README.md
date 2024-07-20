# Azure VM Setup

This project demonstrates how to create and configure an Azure VM using Bicep templates and Azure DevOps pipelines.

## Structure

- `bicep/`: Contains Bicep templates for VM and network resources.
- `pipelines/`: Contains YAML pipeline definition for deploying resources.

## Prerequisites

- Azure subscription
- Azure DevOps account

## Deployment

1. Clone the repository.
2. Update the Azure subscription details in `azure-pipeline.yml`.
3. Commit and push changes to trigger the pipeline.

## Resources Created

- Virtual Network
- Network Interface
- Virtual Machine

## License

This project is licensed under the MIT License.
