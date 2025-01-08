resource "aws_ssm_parameter" "vpc" {
  name  = format("/%s/vpc/vpc_id", var.project_name)
  type  = "String"
  value = aws_vpc.main.id
}

resource "aws_ssm_parameter" "private" {
  for_each = aws_subnet.privatesubnets
  name     = format("/%s/vpc/%s", var.project_name, each.key)
  type     = "String"
  value    = each.value.id
}

resource "aws_ssm_parameter" "public" {
  for_each = aws_subnet.publicsubnets
  name     = format("/%s/vpc/%s", var.project_name, each.key)
  type     = "String"
  value    = each.value.id
}

resource "aws_ssm_parameter" "database" {
  for_each = aws_subnet.dbsubnets
  name     = format("/%s/vpc/%s", var.project_name, each.key)
  type     = "String"
  value    = each.value.id
}
