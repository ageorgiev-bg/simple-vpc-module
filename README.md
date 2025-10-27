<!-- BEGIN_TF_DOCS -->
## Simple VPC module
- Default VPC route table ensures privacy for each new subnet
- 2 AZs with public and private subnets for each
- Single AZ NAT Gateway (No HA setup!)
- Internet Gateway
- VPC Private Interface Endpoints for:
  - S3
  - SSM
    - ssm
    - ssmmessages
    - ec2messages

  No Security Groups are configured for them

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.13.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 6.18.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.18.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_internet_gateway"></a> [enable\_internet\_gateway](#input\_enable\_internet\_gateway) | A boolean flag to enable/disable the internet gateway. | `bool` | n/a | yes |
| <a name="input_enable_s3_interface_endpoint"></a> [enable\_s3\_interface\_endpoint](#input\_enable\_s3\_interface\_endpoint) | A boolean flag to enable/disable the S3 interface endpoint. | `bool` | n/a | yes |
| <a name="input_enable_single_nat_gateway"></a> [enable\_single\_nat\_gateway](#input\_enable\_single\_nat\_gateway) | A boolean flag to enable/disable the NAT gateway. | `bool` | n/a | yes |
| <a name="input_enable_ssm_interface_endpoint"></a> [enable\_ssm\_interface\_endpoint](#input\_enable\_ssm\_interface\_endpoint) | A boolean flag to enable/disable the SSM interface endpoint. | `bool` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name. | `string` | n/a | yes |
| <a name="input_ipv4_main_cidr_block"></a> [ipv4\_main\_cidr\_block](#input\_ipv4\_main\_cidr\_block) | Primary VPC CIDR block. | `any` | n/a | yes |
| <a name="input_private_subnets_config"></a> [private\_subnets\_config](#input\_private\_subnets\_config) | Private Subnets Config. | `map(any)` | n/a | yes |
| <a name="input_public_subnets_config"></a> [public\_subnets\_config](#input\_public\_subnets\_config) | Public Subnets Config. | `map(any)` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | Module VPC id. |
<!-- END_TF_DOCS -->