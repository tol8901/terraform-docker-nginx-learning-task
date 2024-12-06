variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "bucket" {
  description = "The S3 bucket to store Terraform state"
  type        = string
  default    = "terraform-up-and-running-state-qpworeitu234095889s"
}

# variable "dynamodb_table" {
#   description = "The DynamoDB table to use for state locking"
#   type        = string
#   default     = "terraform-up-and-running-locks"
# }

variable keypair {
  description = "The public key to use for SSH access"
  type        = string
  # default     = TF_VAR_keypair
}

# locals {
#   keypair = var.keypair != "" ? var.keypair : (lookup(var, "MY_KEYPAIR", null) != null ? lookup(var, "MY_KEYPAIR", null) : "")
# }