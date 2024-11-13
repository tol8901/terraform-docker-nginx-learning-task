resource "aws_dynamodb_table" "terraform_locks" {
  name         = var.dynamodb_table
  billing_mode = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key = "LockID"
  
  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "terraform-up-and-running-locks"
  }
}