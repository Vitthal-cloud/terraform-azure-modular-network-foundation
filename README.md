# Terraform Azure Modular Network Foundation

## Project Overview

This project demonstrates how to deploy Azure infrastructure using Terraform modules. The current implementation provisions an Azure Resource Group and a Virtual Network using reusable modules. The project is designed following Infrastructure as Code (IaC) best practices and will be extended with additional Azure networking resources.

## Architecture

Architecture diagram will be added soon.

## Folder Structure

```text
modules/
├── resource-group
└── virtual-network
```

## Features

- Modular Terraform design
- Resource Group Module
- Virtual Network Module
- Reusable variables
- Outputs
- Production-ready folder structure

## Prerequisites

- Terraform 1.14+
- Azure Subscription
- Azure CLI

## Deployment Steps

1. Clone repository

2. Login to Azure

3. Initialize Terraform

4. Review Execution Plan

5. Deploy Infrastructure

```bash
terraform init
terraform plan
terraform apply
```

## Modules

| Module | Purpose |
|--------|---------|
| resource-group | Creates Azure Resource Group |
| virtual-network | Creates Azure Virtual Network |

## Inputs

| Variable | Description |
|----------|-------------|
| resource_group_name | Name of Resource Group |
| location | Azure Region |
| vnet_name | Virtual Network Name |
| address_space | VNet Address Space |

## Outputs

| Output | Description |
|--------|-------------|
| resource_group_name | Resource Group Name |
| vnet_name | Virtual Network Name |

## Future Enhancements

- Add Network Security Groups
- Add Subnets
- Add Route Tables
- Add Azure Firewall
- Add Bastion Host
- Add Virtual Machines
- Add Diagnostic Settings

## Author

**Vitthal Ankush Gawade**

Azure Infrastructure Engineer

AZ-104 Certified

Pune, India