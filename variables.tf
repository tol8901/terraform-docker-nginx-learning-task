variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "bucket" {
  description = "The S3 bucket to store Terraform state"
  type        = string
  default    = "terraform-up-and-running-state-qpworeitu23409588"
}

variable "dynamodb_table" {
  description = "The DynamoDB table to use for state locking"
  type        = string
  default     = "terraform-up-and-running-locks"
}