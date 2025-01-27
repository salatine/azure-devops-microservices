resource "aws_vpc" "eks_vpc" {
  cidr_block = var.vpc_cidr_block
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "eks-vpc"
  }
}

resource "aws_subnet" "eks_subnet" {
  count = 2
  vpc_id = aws_vpc.eks_vpc.id
  cidr_block = element(var.subnet_cidr_blocks, count.index)
  availability_zone = element(var.availability_zones, count.index)
  map_public_ip_on_launch = true
  tags = {
    Name = "eks-subnet-${count.index}"
  }
}

resource "aws_security_group" "eks_sg" {
  vpc_id = aws_vpc.eks_vpc.id
  name   = "eks-sg"
  description = "Security group for EKS cluster"
}

resource "aws_security_group_rule" "allow_eks_inbound" {
  type        = "ingress"
  from_port   = 0
  to_port     = 65535
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = aws_security_group.eks_sg.id
}
