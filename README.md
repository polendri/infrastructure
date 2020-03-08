This repo holds deployment and application configuration for the personal servers I run. It's intended for my own
purposes, but also meant to be clear and readable enough to be useful as a reference.

## Initial Configuration

1. Install dependencies: `terraform` and `ansible`.
   - e.g. on Manjaro: `pamac install terraform ansible`
1. Set up Terraform:
   1. Choose a Terraform dev environment. Either
      - use the Terraform CLI, or
      - create a [Terraform Cloud](https://app.terraform.io) account, and set up a workspace linked to this repo.
   1. Set values for sensitive variables
      - Non-sensitive variables are defined in `variables.auto.tfvars`. Sensitive ones (which can be identified by looking
        at the variable definitions in `variables.tf`) need to be defined.
      - Via CLI: Add a `secrets.auto.tfvars` file which sets the variables (this repo's `.gitignore` is configured not to
        commit that file)
      - Via Terraform Cloud: use the "Variables" tab of the Workspace page.
   1. Initialize Terraform
      - `terraform init`
1. Set up Ansible:
   1. Provide the Ansible Vault password in a file named `.vault_password` in the project root.

## Provisioning Infrastructure

1. Invoke Terraform
   - `terraform apply`
1. Boostrap newly-created hosts
   - `ansible-playbook -i inventory.yml playbooks/bootstrap.yml`

## TODO organize

1. Copy over docs for setting up ijj.li GitHub webhooks
1. Docs for calling `ansible-playbook` with `-i inventory.yml` and `--vault-password-file .vault_password`
1. Docs for creating vault variables
   - `ansible-vault encrypt_string --vault-password-file .vault_password SECRET --name NAME`
