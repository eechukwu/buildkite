#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Create a Terraform plan
echo "Creating Terraform plan..."
terraform plan -out="plan.tfplan"

# Optionally, you could upload this plan to Buildkite as an artifact:
# buildkite-agent artifact upload "plan.tfplan"
