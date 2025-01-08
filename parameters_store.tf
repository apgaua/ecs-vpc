# resource "aws_ssm_parameter" "vpc" {
#   name  = format("/%s/vpc/vpc_id", var.project_name)
#   type  = "String"
#   value = aws_vpc.main.id
# }

# # resource "aws_ssm_parameter" "private" {
# #   count = length(aws_subnet.privatesubnets)
# #   name  = format("/%s/vpc/%s", var.project_name, aws_subnet.privatesubnets[count.index].name)
# #   type  = "String"
# #   value = aws_subnet.privatesubnets[count.index].id
# # }

# # resource "aws_ssm_parameter" "public" {
# #   count = length(aws_subnet.publicsubnets)
# #   name  = format("/%s/vpc/%s", var.project_name, aws_subnet.publicsubnets[count.index].index)
# #   type  = "String"
# #   value = aws_subnet.publicsubnets[count.index].id
# # }

# # resource "aws_ssm_parameter" "database" {
# #   count = length(aws_subnet.dbsubnets)
# #   name  = format("/%s/vpc/%s", var.project_name, aws_subnet.dbsubnets[count.index].index)
# #   type  = "String"
# #   value = aws_subnet.dbsubnets[count.index].id
# # }
