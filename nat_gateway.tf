# resource "aws_eip" "vpc_eip" {
#   count  = length(var.availability_zones)
#   domain = "vpc"
#   tags = {
#     Name = format("%s-eip-%s", var.project_name, count.index)
#   }
# }

# resource "aws_nat_gateway" "natgw" {
#   count         = length(var.availability_zones)
#   allocation_id = aws_eip.vpc_eip[count.index].id
#   subnet_id     = aws_subnet.publicsubnets[count.index].id

#   tags = {
#     Name = format("%s-nat-gateway-%s", var.project_name, count.index)
#   }
#   depends_on = [aws_internet_gateway.gw,
#     aws_eip.vpc_eip,
#   aws_subnet.publicsubnets]
# }
