# Tell Terraform which providers (plugins) this project needs.
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub provider.
# The token is NOT written here: the provider reads it automatically
# from the GITHUB_TOKEN environment variable.
provider "github" {
  owner = var.github_owner
}
