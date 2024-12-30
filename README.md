# arquiteturacontainers

## Requirements

Terraform
Inframap
Graphviz

## Comandos

Operacao terraform
terraform fmt --recursive
terraform init -backend-config=environment/dev/backend.tfvars
terraform validate

Criacao de infra
terraform apply -auto-approve -var-file=environment/dev/terraform.tfvars

Destruicao de infra
terraform destroy -auto-approve -var-file=environment/dev/terraform.tfvars

Criacao de diagrama
inframap generate ./ --raw | dot -Tpng > diagrama.png

## Estrutura
![Estrutura terraform](diagrama.png)

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.64.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.vpc_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.gw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.natgw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route.private_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route.public_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route_table.private_internet_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.public_internet_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public_](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_ssm_parameter.database](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_subnet.dbsubnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.privatesubnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.publicsubnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | n/a | `list(string)` | <pre>[<br/>  "us-east-1a",<br/>  "us-east-1b",<br/>  "us-east-1c"<br/>]</pre> | no |
| <a name="input_dbsubnets"></a> [dbsubnets](#input\_dbsubnets) | Database | <pre>map(object({<br/>    cidr_block        = string<br/>    availability_zone = string<br/>  }))</pre> | n/a | yes |
| <a name="input_privatesubnets"></a> [privatesubnets](#input\_privatesubnets) | Private | <pre>map(object({<br/>    cidr_block        = string<br/>    availability_zone = string<br/>  }))</pre> | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | n/a | `any` | n/a | yes |
| <a name="input_publicsubnets"></a> [publicsubnets](#input\_publicsubnets) | Public | <pre>map(object({<br/>    cidr_block        = string<br/>    availability_zone = string<br/>  }))</pre> | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ssm_subnet_database"></a> [ssm\_subnet\_database](#output\_ssm\_subnet\_database) | n/a |
| <a name="output_ssm_subnet_private"></a> [ssm\_subnet\_private](#output\_ssm\_subnet\_private) | n/a |
| <a name="output_ssm_subnet_public"></a> [ssm\_subnet\_public](#output\_ssm\_subnet\_public) | n/a |
| <a name="output_ssm_vpc_id"></a> [ssm\_vpc\_id](#output\_ssm\_vpc\_id) | n/a |
<!-- END_TF_DOCS -->