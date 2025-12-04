# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.98.0"
#     }
#   }

#   backend "s3" {
#     bucket       = "nag-remote-state"
#     key          = "workspace-demo/terraform.tfstate"
#     region       = "us-east-1"
#     encrypt      = true
#     use_lockfile = true
#   }
# }

# provider "aws" {
#   region = "us-east-1"
# }

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.98.0" # Only tell which provider & version to use
    }
  }
}

# Optional: you can even remove this provider block entirely and let root define it
provider "aws" { # No region here; region will come from root module
}

