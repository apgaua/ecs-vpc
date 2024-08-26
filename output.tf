output "ssm_vpc_id" {
    value = aws_ssm_parameter.vpc.id
}

output "ssm_subnet_private_1a" {
    value = aws_ssm_parameter.subnet_private_1a.id
}

output "ssm_subnet_private_1b" {
    value = aws_ssm_parameter.subnet_private_1b
}

output "ssm_subnet_private_1c" {
    value = aws_ssm_parameter.ssm_subnet_private_1c
}