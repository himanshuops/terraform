/*provider "aws" {
  region = "us-east-1"  # Replace with your desired AWS region
}
*/
resource "aws_ecr_repository" "sa-frontend" {
  name = "sa-fronten"  # Replace with your desired repository name
  image_scanning_configuration {
    scan_on_push = true
  }
}
resource "aws_ecr_repository" "sa-backends" {
  name = "sa-backend"  # Replace with your desired repository name
  image_scanning_configuration {
    scan_on_push = true
  }
}
resource "aws_ecr_repository" "sa-logics" {
  name = "sa-logic"  # Replace with your desired repository name
  image_scanning_configuration {
    scan_on_push = true
  }
}

