resource "aws_subnet" "dbsubnets" {
  for_each          = var.dbsubnets
  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone

  tags = {
    Name = "${each.key}"
  }
}