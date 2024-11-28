resource "aws_ecr_repository" "docker-nginx-ecr-repo" {
  name                 = "docker-nginx-ecr-repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}