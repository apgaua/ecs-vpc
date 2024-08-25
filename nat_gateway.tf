resource "aws_eip" "vpc_eip_1a" {
  domain = "vpc"
  tags = {
    Name = format("%s-eip-1a", var.project_name)
  }
}

resource "aws_eip" "vpc_eip_1b" {
  domain = "vpc"
  tags = {
    Name = format("%s-eip-1b", var.project_name)
  }
}

resource "aws_eip" "vpc_eip_1c" {
  domain = "vpc"
  tags = {
    Name = format("%s-eip-1c", var.project_name)
  }
}

resource "aws_nat_gateway" "nat_1a" {
  allocation_id = aws_eip.vpc_eip_1a.id
  subnet_id     = aws_subnet.publicsubnet-1a.id

  tags = {
    Name = format("%s-nat-gateway-1a", var.project_name)
  }
  depends_on = [aws_internet_gateway.gw]
}

resource "aws_nat_gateway" "nat_1b" {
  allocation_id = aws_eip.vpc_eip_1b.id
  subnet_id     = aws_subnet.publicsubnet-1b.id

  tags = {
    Name = format("%s-nat-gateway-1b", var.project_name)
  }
  depends_on = [aws_internet_gateway.gw]
}
resource "aws_nat_gateway" "nat_1c" {
  allocation_id = aws_eip.vpc_eip_1c.id
  subnet_id     = aws_subnet.publicsubnet-1a.id

  tags = {
    Name = format("%s-nat-gateway-1c", var.project_name)
  }
  depends_on = [aws_internet_gateway.gw]
}