# resource "aws_key_pair" "deployer" {
#   key_name   = "deployer-key"
#   public_key = var.keypair
# }

# resource "aws_key_pair" "tf_key" {
#   key_name   = var.key_pair_name
#   public_key = tls_private_key.rsa.public_key_openssh
# }

# # RSA key of size 4096 bits
# resource "tls_private_key" "rsa" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }

# resource "local_file" "tf_key" {
#   content  = tls_private_key.rsa.private_key_pem
#   filename = var.file_name
# }