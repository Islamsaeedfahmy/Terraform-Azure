# 1. Configure the Terraform settings and required providers
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# 2. Configure the Provider
provider "local" {
  # No extra credentials needed for a local provider
}

# 3. Define the Infrastructure Resource
resource "local_file" "sample_file" {
  filename = "${path.module}/hello_world.txt"
  content  = "Hello, Terraform! This file was created automatically."
}

