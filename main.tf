terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 5.76.0"
    }
  }

  backend "s3" {
    # This block configures the S3 backend for storing the Terraform state
    bucket = "terraform-up-and-running-state-qpworeitu234095889q"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-1"

    # This block configures the DynamoDB table for state locking
    # dynamodb_table = "terraform-up-and-running-locks"
    # encrypt        = true
  }
}
