variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "bucket" {
  description = "The S3 bucket to store Terraform state"
  type        = string
  default     = "terraform-up-and-running-state-qpworeitu234095889q"
}

# variable "dynamodb_table" {
#   description = "The DynamoDB table to use for state locking"
#   type        = string
#   default     = "terraform-up-and-running-locks"
# }

variable keypair {
  description = "The public key to use for SSH access"
  type        = string
  # default     = theKeypair
}

# variable "test_var" {
#   type = string
# }

# locals {
#   keypair = var.keypair != "" ? var.keypair : (lookup(var, "MY_KEYPAIR", null) != null ? lookup(var, "MY_KEYPAIR", null) : "")
# }

# variable "ssh_key" {
#   description = "The SSH key to use for deployment"
#   type = string
#   # sensitive = true
#   # default = "deploy_key_default_value_placeholder"
# }

# variable "key_pair_name" {
#   description = "key_pair_name"
#   type        = string
# }

# variable "file_name" {
#   description = "Name of the key pair"
#   type        = string
# }