resource "aws_subnet" "publicsubnets" {
  for_each          = var.publicsubnets
  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone
  tags = {
    Name = "${each.key}"
  }
}
resource "aws_route_table" "public_internet_access" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = format("%s-public", var.project_name)
  }
}

resource "aws_route" "public_access" {
  route_table_id         = aws_route_table.public_internet_access.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw.id
}

resource "aws_route_table_association" "public_" {
  for_each = toset(var.availability_zones)
  subnet_id = lookup(
    { for subnet in aws_subnet.publicsubnets : subnet.availability_zone => subnet.id }, each.key
  )
  route_table_id = aws_route_table.public_internet_access.id
}
