resource "aws_subnet" "privatesubnets" {
  for_each          = var.privatesubnets
  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone

  tags = {
    Name = "${each.key}"
  }
}

#Route Table
resource "aws_route_table" "private_internet_access" {
  for_each = toset(var.availability_zones)
  vpc_id   = aws_vpc.main.id
  tags = {
    Name = format("%s-private-%s", var.project_name, each.key)
  }
}

#Route
resource "aws_route" "private_access" {
  for_each               = aws_route_table.private_internet_access
  route_table_id         = each.value.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_nat_gateway.natgw[each.key].id
}

#Route table association
resource "aws_route_table_association" "private" {
  for_each = aws_route_table.private_internet_access
  subnet_id = lookup(
    { for subnet in aws_subnet.privatesubnets : subnet.availability_zone => subnet.id }, each.key
  )
  route_table_id = each.value.id
  depends_on     = [aws_subnet.privatesubnets]
}