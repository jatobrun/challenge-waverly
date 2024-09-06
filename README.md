# GCP Web Application Infrastructure

## Overview

This repository contains Terraform code to provision GCP infrastructure for a web application. It includes modules for Compute Engine instances, Cloud Storage, and Load Balancing. The configuration supports multiple environments (e.g., development and production) and uses environment-specific `terraform.tfvars` files for variable settings.

## Directory Structure

- **`modules/`**: Contains reusable Terraform modules.
  - **`compute_engine/`**: Module for Compute Engine VM instances.
    - `main.tf`: Resource definitions for VM instances.
    - `variables.tf`: Variables used by the Compute Engine module.
    - `outputs.tf`: Outputs from the Compute Engine module.
  - **`cloud_storage/`**: Module for Google Cloud Storage buckets.
    - `main.tf`: Resource definitions for Cloud Storage.
    - `variables.tf`: Variables used by the Cloud Storage module.
    - `outputs.tf`: Outputs from the Cloud Storage module.
  - **`cloud_lb/`**: Module for configuring Load Balancing.
    - `main.tf`: Resource definitions for Load Balancer.
    - `variables.tf`: Variables used by the Load Balancer module.
    - `outputs.tf`: Outputs from the Load Balancer module.
- **`scripts/`**: Contains startup scripts for configuring VM instances.
  - `setup-webserver.sh`: Script to install and configure a web server (e.g., Nginx).
- **`main.tf`**: Main Terraform configuration file that uses the modules.
- **`variables.tf`**: Defines common variables used across the configuration.
- **`environments`**: Environment-specific variables.
  - `terraform.dev.tfvars`: Variables for the development environment.
  - `terraform.prod.tfvars`: Variables for the production environment.
- **`README.md`**: Documentation for the project.

## Variables

### Environment-Specific Variables

Some values are set default, but if you want to override you need to create a new terraform.${env}.tfvars

## Security

For this challenge we use service account but in a real project we want to use workload identity federation.
