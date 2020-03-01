This repo holds deployment and application configuration for the personal servers I run. It's intended for my own
purposes, but also meant to be clear and readable enough to be useful as a reference.

## Pre-deployment Configuration

1. Set up a Terraform dev environment. Either
   - Create a [Terraform Cloud](https://app.terraform.io) account, and set up a workspace linked to this repo, or
   - Use the Terraform CLI
1. Set values for sensitive variables
   - Non-sensitive variables are defined in `variables.auto.tfvars`. Sensitive ones (which can be identified by looking
     at the variable definitions in `variables.tf`) need to be defined.
   - Via Terraform Cloud: use the "Variables" tab of the Workspace page.
   - Via CLI: Add a `secrets.auto.tfvars` file which sets the variables (this repo's `.gitignore` is configured not to
     commit that file)
