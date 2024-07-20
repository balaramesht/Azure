# Azure 3-Tier Application

This project demonstrates how to create and configure a 3-tier application (web, app, and database tiers) using Bicep templates and Azure DevOps pipelines.

## Structure

- `bicep/`: Contains Bicep templates for network, App Service Plan, web apps, storage, and database resources.
- `pipelines/`: Contains YAML pipeline definition for deploying resources and code.

## Prerequisites

- Azure subscription
- Azure DevOps account

## Deployment

1. Clone the repository.
2. Update the Azure subscription details in `azure-pipeline.yml`.
3. Commit and push changes to trigger the pipeline.

## Resources Created

- Virtual Network
- App Service Plan with scaling settings
- Web App
- App Service
- Storage Account
- MySQL Database

## License

This project is licensed under the MIT License.
