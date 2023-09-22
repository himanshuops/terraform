/*provider "aws" {
  region = "us-east-1"  # Replace with your desired AWS region
}

resource "aws_eks_cluster" "k8s-mastery" {
  name     = "k8s-master"
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = ["aws_subnet.public_subnet.id"]  # Replace with your subnet IDs
    security_group_ids = ["aws_security_group.all_tcp.id"]  # Replace with your security group ID
  }
}

resource "aws_iam_role" "eks_cluster_role" {
  name = "your-eks-cluster-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "eks.amazonaws.com",
        },
      },
    ],
  })
}

resource "aws_iam_policy_attachment" "eks_cluster_attachment" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.eks_cluster_role.name
}

resource "aws_iam_policy_attachment" "eks_service_attachment" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
  role       = aws_iam_role.eks_cluster_role.name
}

# Create an EKS Node Group
module "eks_workers" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = aws_eks_cluster.k8s-mastery.name
  cluster_version = aws_eks_cluster.k8s-mastery.version  # Corrected reference

  node_groups = {
    eks_workers = {
      desired_capacity = 2
      max_capacity     = 2
      min_capacity     = 1

      instance_type = "t3.medium"  # Replace with your desired instance type
    }
  }

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}*/
