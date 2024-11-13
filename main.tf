terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0.0"
    }
  }

  backend "s3" {
    # This block configures the S3 backend for storing the Terraform state
    bucket         = "terraform-up-and-running-state-qpworeitu23409588"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"

    # This block configures the DynamoDB table for state locking
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}
