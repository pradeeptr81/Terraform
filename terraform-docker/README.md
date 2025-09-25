# Terraform Docker Task

## Objective
Provision a Docker container using Terraform (IaC).

## Steps Done
1. Installed Terraform and Docker.
2. Created `main.tf` with Docker provider.
3. Provisioned an **nginx** container on port 8081 using:
   - `terraform init`
   - `terraform plan`
   - `terraform apply`
4. Verified container with `docker ps` and browser.
5. Listed resources using `terraform state list`.
6. Destroyed infra with `terraform destroy`.

## Files
- `main.tf` → Terraform config
- `execution.log` → Terraform execution logs
- `screenshots/` → Proof of successful run

