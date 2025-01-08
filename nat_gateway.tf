resource "aws_eip" "vpc_eip" {
  for_each = toset(var.availability_zones)
  domain   = "vpc"
  tags = {
    Name = format("%s-eip-%s", var.project_name, each.key)
  }
}

resource "aws_nat_gateway" "natgw" {
  for_each      = toset(var.availability_zones)
  allocation_id = aws_eip.vpc_eip[each.key].id
  subnet_id = lookup(
    { for subnet in aws_subnet.publicsubnets : subnet.availability_zone => subnet.id }, each.key
  )

  tags = {
    Name = format("%s-nat-gateway-%s", var.project_name, each.key)
  }
  depends_on = [aws_internet_gateway.gw,
    aws_eip.vpc_eip,
  aws_subnet.publicsubnets]
}
