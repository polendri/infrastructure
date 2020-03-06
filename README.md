This repo holds deployment and application configuration for the personal servers I run. It's intended for my own
purposes, but also meant to be clear and readable enough to be useful as a reference.

## Initial Configuration

1. Install dependencies: `terraform`, `ansible`, and `terraform-inventory`.
   - e.g. on Manjaro: `pamac install terraform ansible && pamac build terraform-inventory-git`
1. Set up a Terraform dev environment. Either
   - Use the Terraform CLI
   - Create a [Terraform Cloud](https://app.terraform.io) account, and set up a workspace linked to this repo, or
1. Set values for sensitive variables
   - Non-sensitive variables are defined in `variables.auto.tfvars`. Sensitive ones (which can be identified by looking
     at the variable definitions in `variables.tf`) need to be defined.
   - Via CLI: Add a `secrets.auto.tfvars` file which sets the variables (this repo's `.gitignore` is configured not to
     commit that file)
   - Via Terraform Cloud: use the "Variables" tab of the Workspace page.
1. Initialize Terraform
   - `terraform init`

## Provisioning Infrastructure

1. Invoke Terraform
   - `terraform apply`
