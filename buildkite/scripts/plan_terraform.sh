#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Apply the Terraform plan
echo "Applying Terraform plan..."
terraform apply "plan.tfplan"
