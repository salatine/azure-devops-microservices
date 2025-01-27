resource "aws_cloudwatch_log_group" "eks_log_group" {
  name = "/aws/eks/microservices"
}

resource "aws_cloudwatch_log_stream" "eks_log_stream" {
  log_group_name = aws_cloudwatch_log_group.eks_log_group.name
  name           = "eks-log-stream"
}
