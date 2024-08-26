resource "aws_ssm_parameter" "vpc" {
  name  = format("%s/vpc/vpc_id", var.project_name)
  type  = "String"
  value = aws_vpc.main.id
}

resource "aws_ssm_parameter" "private_1a" {
  name  = format("%s/vpc/subnet_private_1a", var.project_name)
  type  = "String"
  value = aws_subnet.privatesubnet-1a
}

resource "aws_ssm_parameter" "private_1b" {
  name  = format("%s/vpc/subnet_private_1b", var.project_name)
  type  = "String"
  value = aws_subnet.privatesubnet-1b
}

resource "aws_ssm_parameter" "private_1c" {
  name  = format("%s/vpc/subnet_private_1c", var.project_name)
  type  = "String"
  value = aws_subnet.privatesubnet-1c
}