# output "ssm_vpc_id" {
#   value = aws_ssm_parameter.vpc.id
# }

# # output "ssm_subnet_private" {
# #   value = {
# #     for subnet_key, param in aws_ssm_parameter.private : subnet_key => param.id
# #   }
# # }

# # output "ssm_subnet_public" {
# #   value = {
# #     for subnet_key, param in aws_ssm_parameter.public : subnet_key => param.id
# #   }
# # }

# # output "ssm_subnet_database" {
# #   value = {
# #     for subnet_key, param in aws_ssm_parameter.database : subnet_key => param.id
# #   }
# # }
