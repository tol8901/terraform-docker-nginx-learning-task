resource "aws_instance" "example" {
  ami           = "ami-006dcf34c09e50022" // Amazon Linux 2 AMI
  instance_type = "t2.micro"
  vpc_security_group_ids = [
    aws_security_group.example.id,
  ]
  # key_name      = var.ssh_key
  key_name = var.key_pair_name
  #   user_data = <<-EOF
  #               #!/bin/bash
  #               yum install -y docker
  #               systemctl enable docker
  #               systemctl start docker
  #               sudo chown $USER /var/run/docker.sock
  #               docker image pull justwatchcomearring331/nginx-14:1.0
  #               docker run -d -p 8081:80 -e EXTERNAL_PORT=8081 justwatchcomearring331/nginx-14:1.0
  #               EOF
}
