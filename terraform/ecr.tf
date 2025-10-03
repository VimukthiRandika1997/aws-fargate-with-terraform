resource "aws_ecr_repository" "test_repository" {
  name                 = var.ecr_repository_name
  image_tag_mutability = "MUTABLE"
  lifecycle {
    prevent_destroy = false
  }
}