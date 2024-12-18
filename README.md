## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.72.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_gateway-a"></a> [gateway-a](#module\_gateway-a) | ../../../modules/network/gateway | n/a |
| <a name="module_gateway-b"></a> [gateway-b](#module\_gateway-b) | ../../../modules/network/gateway | n/a |
| <a name="module_net_a"></a> [net\_a](#module\_net\_a) | ../../../modules/network/vpc | n/a |
| <a name="module_net_a-subnets"></a> [net\_a-subnets](#module\_net\_a-subnets) | ../../../modules/network/subnet | n/a |
| <a name="module_net_b"></a> [net\_b](#module\_net\_b) | ../../../modules/network/vpc | n/a |
| <a name="module_net_b-subnets"></a> [net\_b-subnets](#module\_net\_b-subnets) | ../../../modules/network/subnet | n/a |
| <a name="module_subnet_a_rt"></a> [subnet\_a\_rt](#module\_subnet\_a\_rt) | ../../../modules/network/route-table | n/a |
| <a name="module_subnet_b_rt"></a> [subnet\_b\_rt](#module\_subnet\_b\_rt) | ../../../modules/network/route-table | n/a |
| <a name="module_subnet_bast_rt"></a> [subnet\_bast\_rt](#module\_subnet\_bast\_rt) | ../../../modules/network/route-table | n/a |
| <a name="module_subnet_c_rt"></a> [subnet\_c\_rt](#module\_subnet\_c\_rt) | ../../../modules/network/route-table | n/a |
| <a name="module_subnet_d_rt"></a> [subnet\_d\_rt](#module\_subnet\_d\_rt) | ../../../modules/network/route-table | n/a |
| <a name="module_vpc_peering"></a> [vpc\_peering](#module\_vpc\_peering) | ../../../modules/network/peering/vpc-peering | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_net_a-subnet"></a> [net\_a-subnet](#input\_net\_a-subnet) | Subnets in Network-A | <pre>map(object({<br/>    subnet_cidr = string<br/>    subnet_az   = string<br/>    subnet_name = string<br/>  }))</pre> | <pre>{<br/>  "subnet_a": {<br/>    "subnet_az": "us-east-1a",<br/>    "subnet_cidr": "10.0.1.0/24",<br/>    "subnet_name": "subnet-a"<br/>  },<br/>  "subnet_b": {<br/>    "subnet_az": "us-east-1b",<br/>    "subnet_cidr": "10.0.2.0/24",<br/>    "subnet_name": "subnet-b"<br/>  }<br/>}</pre> | no |
| <a name="input_net_b-subnet"></a> [net\_b-subnet](#input\_net\_b-subnet) | Subnets in Network-B | <pre>map(object({<br/>    subnet_cidr = string<br/>    subnet_az   = string<br/>    subnet_name = string<br/>  }))</pre> | <pre>{<br/>  "subnet_bast": {<br/>    "subnet_az": "us-east-1c",<br/>    "subnet_cidr": "10.1.1.0/24",<br/>    "subnet_name": "subnet_bast"<br/>  },<br/>  "subnet_c": {<br/>    "subnet_az": "us-east-1d",<br/>    "subnet_cidr": "10.1.2.0/24",<br/>    "subnet_name": "subnet_c"<br/>  },<br/>  "subnet_d": {<br/>    "subnet_az": "us-east-1e",<br/>    "subnet_cidr": "10.1.3.0/24",<br/>    "subnet_name": "subnet_d"<br/>  },<br/>  "subnet_e": {<br/>    "subnet_az": "us-east-1f",<br/>    "subnet_cidr": "10.1.4.0/24",<br/>    "subnet_name": "subnet_e"<br/>  }<br/>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_rt_id"></a> [app\_rt\_id](#output\_app\_rt\_id) | Subnet C associated Route table ID (App subnet's Route table) |
| <a name="output_app_subnet_cidr"></a> [app\_subnet\_cidr](#output\_app\_subnet\_cidr) | Subnet CIDR of the subnet-C (App VM's Subnet) |
| <a name="output_app_subnet_id"></a> [app\_subnet\_id](#output\_app\_subnet\_id) | Subnet ID of the subnet-C (App Vm's Subnet) |
| <a name="output_bastion_rt_id"></a> [bastion\_rt\_id](#output\_bastion\_rt\_id) | Subnet Bast associated Route table ID (Bastion VM subnet's Route table) |
| <a name="output_bastion_subnet_cidr"></a> [bastion\_subnet\_cidr](#output\_bastion\_subnet\_cidr) | Subnet CIDR of the subnet-Bast (Bastion VM's Subnet) |
| <a name="output_bastion_subnet_id"></a> [bastion\_subnet\_id](#output\_bastion\_subnet\_id) | Subnet ID of the subnet-Bast (Bastion VM's Subnet) |
| <a name="output_connect_rt_id"></a> [connect\_rt\_id](#output\_connect\_rt\_id) | Subnet B associated Route table ID (Connect VM subnet's Route table) |
| <a name="output_connect_subnet_cidr"></a> [connect\_subnet\_cidr](#output\_connect\_subnet\_cidr) | Subnet CIDR of the subnet-B (Connect VM's Subnet) |
| <a name="output_connect_subnet_id"></a> [connect\_subnet\_id](#output\_connect\_subnet\_id) | Subnet ID of the subnet-B (Connect VM's Subnet) |
| <a name="output_db_rt_id"></a> [db\_rt\_id](#output\_db\_rt\_id) | Subnet D & E associated Route table ID (DB subnet's Route table) |
| <a name="output_db_subnet_1"></a> [db\_subnet\_1](#output\_db\_subnet\_1) | Subnet ID of the subnet-D (DB Subnet-1) |
| <a name="output_db_subnet_1_cidr"></a> [db\_subnet\_1\_cidr](#output\_db\_subnet\_1\_cidr) | Subnet CIDR of the subnet-D (DB Subnet) |
| <a name="output_db_subnet_2"></a> [db\_subnet\_2](#output\_db\_subnet\_2) | Subnet ID of the subnet-E (DB Subnet-2) |
| <a name="output_db_subnet_2_cidr"></a> [db\_subnet\_2\_cidr](#output\_db\_subnet\_2\_cidr) | Subnet CIDR of the subnet-E (DB Subnet) |
| <a name="output_igw_1_id"></a> [igw\_1\_id](#output\_igw\_1\_id) | Internet Gateway ID in Network A |
| <a name="output_igw_2_id"></a> [igw\_2\_id](#output\_igw\_2\_id) | Internet Gateway ID in Network B |
| <a name="output_nat_id"></a> [nat\_id](#output\_nat\_id) | NAT Gateway ID in Network B |
| <a name="output_net_a_id"></a> [net\_a\_id](#output\_net\_a\_id) | VPC ID of Network A (VPC-1) |
| <a name="output_net_b_id"></a> [net\_b\_id](#output\_net\_b\_id) | VPC ID of Network B (VPC-2) |
| <a name="output_nginx_rt_id"></a> [nginx\_rt\_id](#output\_nginx\_rt\_id) | Subnet A associated Route table ID (Nginx VM subnet's Route table) |
| <a name="output_nginx_subnet_cidr"></a> [nginx\_subnet\_cidr](#output\_nginx\_subnet\_cidr) | Subnet CIDR of the subnet-A (Nginx VM's Subnet) |
| <a name="output_nginx_subnet_id"></a> [nginx\_subnet\_id](#output\_nginx\_subnet\_id) | Subnet ID of the subnet-A (Nginx VM's Subnet) |
| <a name="output_vpc_peer_id"></a> [vpc\_peer\_id](#output\_vpc\_peer\_id) | VPC Peering ID used to Connect Network-A & Network-B |
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.72.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.72.1 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_rds_postgres"></a> [rds\_postgres](#module\_rds\_postgres) | ../../../modules/database | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret.db_credentials](https://registry.terraform.io/providers/hashicorp/aws/5.72.1/docs/data-sources/secretsmanager_secret) | data source |
| [aws_secretsmanager_secret_version.db_credentials](https://registry.terraform.io/providers/hashicorp/aws/5.72.1/docs/data-sources/secretsmanager_secret_version) | data source |
| [terraform_remote_state.nets](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_random_pass"></a> [random\_pass](#output\_random\_pass) | Random password generated that is attached as password for the RDS Instance |
| <a name="output_rds_endpoint"></a> [rds\_endpoint](#output\_rds\_endpoint) | RDS Endpoint for the created Database service |
| <a name="output_rds_instance_id"></a> [rds\_instance\_id](#output\_rds\_instance\_id) | RDS Instance ID for the created Database service |
| <a name="output_rds_security_group_id"></a> [rds\_security\_group\_id](#output\_rds\_security\_group\_id) | Security Group ID of the RDS Instance |
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.72.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.72.1 |
| <a name="provider_http"></a> [http](#provider\_http) | 3.4.5 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_nlb"></a> [nlb](#module\_nlb) | ../../../../modules/compute/lb/nlb | n/a |
| <a name="module_vm_app_1"></a> [vm\_app\_1](#module\_vm\_app\_1) | ../../../../modules/compute/ec2 | n/a |
| <a name="module_vm_app_2"></a> [vm\_app\_2](#module\_vm\_app\_2) | ../../../../modules/compute/ec2 | n/a |
| <a name="module_vm_bastion"></a> [vm\_bastion](#module\_vm\_bastion) | ../../../../modules/compute/ec2 | n/a |
| <a name="module_vm_connect"></a> [vm\_connect](#module\_vm\_connect) | ../../../../modules/compute/ec2 | n/a |
| <a name="module_vm_nginx"></a> [vm\_nginx](#module\_vm\_nginx) | ../../../../modules/compute/ec2 | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_ami.amznlinux2023](https://registry.terraform.io/providers/hashicorp/aws/5.72.1/docs/data-sources/ami) | data source |
| [aws_s3_object.recipe-app](https://registry.terraform.io/providers/hashicorp/aws/5.72.1/docs/data-sources/s3_object) | data source |
| [http_http.user_ip](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |
| [terraform_remote_state.nets](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ami_id"></a> [ami\_id](#output\_ami\_id) | Amazon Machine Image identifier used as base template for EC2 instances |
| <a name="output_nlb_dns"></a> [nlb\_dns](#output\_nlb\_dns) | DNS hostname of Network Load Balancer for distributed traffic handling |
| <a name="output_vm_app_1_id"></a> [vm\_app\_1\_id](#output\_vm\_app\_1\_id) | Unique AWS instance identifier assigned to the first application virtual machine |
| <a name="output_vm_app_1_priv_ip"></a> [vm\_app\_1\_priv\_ip](#output\_vm\_app\_1\_priv\_ip) | Private IPv4 address assigned to first application instance within VPC |
| <a name="output_vm_app_1_tls_key"></a> [vm\_app\_1\_tls\_key](#output\_vm\_app\_1\_tls\_key) | Generated SSH private key in PEM format for secure access to first app instance |
| <a name="output_vm_app_2_id"></a> [vm\_app\_2\_id](#output\_vm\_app\_2\_id) | Unique AWS instance identifier assigned to the second application virtual machine |
| <a name="output_vm_app_2_priv_ip"></a> [vm\_app\_2\_priv\_ip](#output\_vm\_app\_2\_priv\_ip) | Private IPv4 address assigned to second application instance within VPC |
| <a name="output_vm_app_2_tls_key"></a> [vm\_app\_2\_tls\_key](#output\_vm\_app\_2\_tls\_key) | Generated SSH private key in PEM format for secure access to second app instance |
| <a name="output_vm_app_sg_id"></a> [vm\_app\_sg\_id](#output\_vm\_app\_sg\_id) | Security group identifier controlling network access for application instances |
| <a name="output_vm_bastion_public_ip"></a> [vm\_bastion\_public\_ip](#output\_vm\_bastion\_public\_ip) | Public IPv4 address assigned to bastion host for external access |
| <a name="output_vm_bastion_tls_key"></a> [vm\_bastion\_tls\_key](#output\_vm\_bastion\_tls\_key) | Generated SSH private key in PEM format for secure access to bastion host |
| <a name="output_vm_connect_private_ip"></a> [vm\_connect\_private\_ip](#output\_vm\_connect\_private\_ip) | Private IPv4 address assigned to connect server within VPC network |
| <a name="output_vm_connect_sg_id"></a> [vm\_connect\_sg\_id](#output\_vm\_connect\_sg\_id) | Security group identifier controlling network access for connect server |
| <a name="output_vm_connect_tls_key"></a> [vm\_connect\_tls\_key](#output\_vm\_connect\_tls\_key) | Generated SSH private key in PEM format for secure access to connect server |
| <a name="output_vm_nginx_public_ip"></a> [vm\_nginx\_public\_ip](#output\_vm\_nginx\_public\_ip) | Public IPv4 address assigned to NGINX server for external access |
| <a name="output_vm_nginx_tls_key"></a> [vm\_nginx\_tls\_key](#output\_vm\_nginx\_tls\_key) | Generated SSH private key in PEM format for secure access to NGINX server |
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.72.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.72.1 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_delete_lambda"></a> [delete\_lambda](#module\_delete\_lambda) | ../../../../modules/serverless/lambda | n/a |
| <a name="module_delete_lambda_inegration"></a> [delete\_lambda\_inegration](#module\_delete\_lambda\_inegration) | ../../../../modules/serverless/api-gtw | n/a |
| <a name="module_get_by_id_lambda"></a> [get\_by\_id\_lambda](#module\_get\_by\_id\_lambda) | ../../../../modules/serverless/lambda | n/a |
| <a name="module_get_by_id_lambda_inegration"></a> [get\_by\_id\_lambda\_inegration](#module\_get\_by\_id\_lambda\_inegration) | ../../../../modules/serverless/api-gtw | n/a |
| <a name="module_get_lambda"></a> [get\_lambda](#module\_get\_lambda) | ../../../../modules/serverless/lambda | n/a |
| <a name="module_get_lambda_inegration"></a> [get\_lambda\_inegration](#module\_get\_lambda\_inegration) | ../../../../modules/serverless/api-gtw | n/a |
| <a name="module_http_api_gateway"></a> [http\_api\_gateway](#module\_http\_api\_gateway) | ../../../../modules/serverless/api-gtw | n/a |
| <a name="module_post_lambda"></a> [post\_lambda](#module\_post\_lambda) | ../../../../modules/serverless/lambda | n/a |
| <a name="module_post_lambda_inegration"></a> [post\_lambda\_inegration](#module\_post\_lambda\_inegration) | ../../../../modules/serverless/api-gtw | n/a |
| <a name="module_put_lambda"></a> [put\_lambda](#module\_put\_lambda) | ../../../../modules/serverless/lambda | n/a |
| <a name="module_put_lambda_inegration"></a> [put\_lambda\_inegration](#module\_put\_lambda\_inegration) | ../../../../modules/serverless/api-gtw | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret.lambda_credentials](https://registry.terraform.io/providers/hashicorp/aws/5.72.1/docs/data-sources/secretsmanager_secret) | data source |
| [aws_secretsmanager_secret_version.lambda_credentials](https://registry.terraform.io/providers/hashicorp/aws/5.72.1/docs/data-sources/secretsmanager_secret_version) | data source |
| [terraform_remote_state.dbs](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |
| [terraform_remote_state.nets](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output___gtw_url"></a> [\_\_gtw\_url](#output\_\_\_gtw\_url) | Public endpoint URL for accessing the HTTP API gateway and its associated resources |
| <a name="output_delete-recipe-arn"></a> [delete-recipe-arn](#output\_delete-recipe-arn) | Amazon Resource Name for DELETE Lambda function used in IAM and API configurations |
| <a name="output_delete-recipe-id"></a> [delete-recipe-id](#output\_delete-recipe-id) | Unique identifier for DELETE Lambda function handling recipe removal operations |
| <a name="output_delete_recipe_output"></a> [delete\_recipe\_output](#output\_delete\_recipe\_output) | Test execution results from the DELETE Lambda function removing recipe entries |
| <a name="output_get-by-id-recipe-arn"></a> [get-by-id-recipe-arn](#output\_get-by-id-recipe-arn) | Amazon Resource Name for GET-BY-ID Lambda function for IAM and API integrations |
| <a name="output_get-by-id-recipe-id"></a> [get-by-id-recipe-id](#output\_get-by-id-recipe-id) | Unique identifier for GET-BY-ID Lambda function retrieving specific recipes |
| <a name="output_get-recipe-arn"></a> [get-recipe-arn](#output\_get-recipe-arn) | Amazon Resource Name for GET Lambda function used in IAM and API configurations |
| <a name="output_get-recipe-id"></a> [get-recipe-id](#output\_get-recipe-id) | Unique identifier for GET Lambda function handling retrieval of all recipes |
| <a name="output_get_by_id_recipe_output"></a> [get\_by\_id\_recipe\_output](#output\_get\_by\_id\_recipe\_output) | Test execution results from the GET-BY-ID Lambda function retrieving specific recipe |
| <a name="output_get_recipe_output"></a> [get\_recipe\_output](#output\_get\_recipe\_output) | Test execution results from the GET-recipe Lambda function retrieving all recipes |
| <a name="output_http-api-gtw-arn"></a> [http-api-gtw-arn](#output\_http-api-gtw-arn) | Amazon Resource Name for HTTP API Gateway used in IAM and execution context |
| <a name="output_http-api-gtw-id"></a> [http-api-gtw-id](#output\_http-api-gtw-id) | Unique identifier for the HTTP API Gateway managing recipe service endpoints |
| <a name="output_lambda_role_arn"></a> [lambda\_role\_arn](#output\_lambda\_role\_arn) | IAM Role ARN defining permissions and trust relationships for Lambda execution |
| <a name="output_lambda_sg_id"></a> [lambda\_sg\_id](#output\_lambda\_sg\_id) | Security Group ID controlling network access rules for all Lambda functions |
| <a name="output_layer_arn"></a> [layer\_arn](#output\_layer\_arn) | Amazon Resource Name for the Lambda layer containing shared code and dependencies |
| <a name="output_post-recipe-arn"></a> [post-recipe-arn](#output\_post-recipe-arn) | Amazon Resource Name for POST Lambda function used in IAM and API configurations |
| <a name="output_post-recipe-id"></a> [post-recipe-id](#output\_post-recipe-id) | Unique identifier for POST Lambda function handling creation of new recipes |
| <a name="output_post_recipe_output"></a> [post\_recipe\_output](#output\_post\_recipe\_output) | Test execution results from the POST Lambda function creating new recipe entries |
| <a name="output_put-recipe-arn"></a> [put-recipe-arn](#output\_put-recipe-arn) | Amazon Resource Name for PUT Lambda function used in IAM and API configurations |
| <a name="output_put-recipe-id"></a> [put-recipe-id](#output\_put-recipe-id) | Unique identifier for PUT Lambda function handling recipe updates operations |
| <a name="output_put_recipe_output"></a> [put\_recipe\_output](#output\_put\_recipe\_output) | Test execution results from the PUT Lambda function updating existing recipes |
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.72.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_http"></a> [http](#provider\_http) | 3.4.5 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_s3_priv"></a> [s3\_priv](#module\_s3\_priv) | ../../../../modules/storage/s3 | n/a |
| <a name="module_s3_pub"></a> [s3\_pub](#module\_s3\_pub) | ../../../../modules/storage/s3 | n/a |

## Resources

| Name | Type |
|------|------|
| [http_http.myip](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |
| [terraform_remote_state.nets](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_s3_endpoint_id"></a> [s3\_endpoint\_id](#output\_s3\_endpoint\_id) | VPC endpoint ID enabling secure private network access to S3 services |
| <a name="output_s3_priv_arn"></a> [s3\_priv\_arn](#output\_s3\_priv\_arn) | Amazon Resource Name (ARN) of the private S3 bucket for IAM policy references |
| <a name="output_s3_priv_id"></a> [s3\_priv\_id](#output\_s3\_priv\_id) | Unique identifier of the private S3 bucket used for secure internal storage |
| <a name="output_s3_pub_arn"></a> [s3\_pub\_arn](#output\_s3\_pub\_arn) | Amazon Resource Name (ARN) of the public S3 bucket for IAM policy references |
| <a name="output_s3_pub_id"></a> [s3\_pub\_id](#output\_s3\_pub\_id) | Unique identifier of the public S3 bucket used for publicly accessible assets |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_vpc.vpcs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | IPv4 CIDR block range for VPC network address space allocation | `string` | n/a | yes |
| <a name="input_deployment_mode"></a> [deployment\_mode](#input\_deployment\_mode) | Environment designation for VPC deployment like production, staging or development | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name tag to be assigned to the VPC for identification and management | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_cidr_block"></a> [vpc\_cidr\_block](#output\_vpc\_cidr\_block) | IPv4 address range assigned to the VPC for internal network addressing |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | Unique identifier assigned to the created Virtual Private Cloud in AWS |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_subnet.subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_deployment_mode"></a> [deployment\_mode](#input\_deployment\_mode) | Environment designation for subnet deployment like production, staging or development | `string` | n/a | yes |
| <a name="input_subnet_az"></a> [subnet\_az](#input\_subnet\_az) | AWS Availability Zone where the subnet will be physically located | `string` | n/a | yes |
| <a name="input_subnet_cidr"></a> [subnet\_cidr](#input\_subnet\_cidr) | IPv4 CIDR block range for subnet address space within the VPC network | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Name tag to be assigned to the subnet for identification and organization | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of the VPC where the subnet will be created and associated | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_cidr"></a> [subnet\_cidr](#output\_subnet\_cidr) | IPv4 address range allocated to the subnet for network addressing purposes |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | Unique identifier assigned to the created subnet within the specified VPC |
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.eip-nat-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.igw-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.nat-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route.igw_rt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route.nat_rt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_igw"></a> [create\_igw](#input\_create\_igw) | Flag to determine whether an Internet Gateway should be provisioned | `bool` | `false` | no |
| <a name="input_create_igw_rte"></a> [create\_igw\_rte](#input\_create\_igw\_rte) | Flag to control creation of Internet Gateway route in route table | `bool` | `false` | no |
| <a name="input_create_nat"></a> [create\_nat](#input\_create\_nat) | Flag to determine whether a NAT Gateway should be provisioned | `bool` | `false` | no |
| <a name="input_create_nat_rte"></a> [create\_nat\_rte](#input\_create\_nat\_rte) | Flag to control creation of NAT Gateway route in route table | `bool` | `false` | no |
| <a name="input_deployment_mode"></a> [deployment\_mode](#input\_deployment\_mode) | Specifies deployment environment like production, staging or development | `string` | n/a | yes |
| <a name="input_igw_name"></a> [igw\_name](#input\_igw\_name) | Name tag for the Internet Gateway to identify in AWS console | `string` | `"igw"` | no |
| <a name="input_nat_name"></a> [nat\_name](#input\_nat\_name) | Name tag for the NAT Gateway to identify in AWS console | `string` | `"nat"` | no |
| <a name="input_priv_rt_id"></a> [priv\_rt\_id](#input\_priv\_rt\_id) | ID of private route table for NAT Gateway route association | `string` | `" "` | no |
| <a name="input_pub_rt_id"></a> [pub\_rt\_id](#input\_pub\_rt\_id) | ID of public route table for Internet Gateway route association | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | ID of subnet where NAT gateway will be provisioned for outbound traffic | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of existing VPC where internet and NAT gateways will be deployed | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_igw_id"></a> [igw\_id](#output\_igw\_id) | Unique identifier of the provisioned Internet Gateway if created |
| <a name="output_nat_id"></a> [nat\_id](#output\_nat\_id) | Unique identifier of the provisioned NAT Gateway if created |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route_table.rt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.subnet_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_deployment_mode"></a> [deployment\_mode](#input\_deployment\_mode) | Environment designation for route table like production, staging or development | `string` | n/a | yes |
| <a name="input_gateway_id"></a> [gateway\_id](#input\_gateway\_id) | ID of the internet or NAT gateway to be associated with routes | `string` | `""` | no |
| <a name="input_rt_name"></a> [rt\_name](#input\_rt\_name) | Name tag to identify and manage the route table resource in AWS | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet IDs to be associated with this route table | `list(string)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of the VPC where route table resources will be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_route_table_id"></a> [route\_table\_id](#output\_route\_table\_id) | The ID of the created route table |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_db_instance.pg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [aws_db_subnet_group.subnet_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |
| [aws_secretsmanager_secret.rds_creds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.rds_creds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [aws_security_group.db_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [random_password.pass](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allocated_storage"></a> [allocated\_storage](#input\_allocated\_storage) | Amount of storage in gigabytes allocated to the RDS instance | `number` | n/a | yes |
| <a name="input_db_identifier"></a> [db\_identifier](#input\_db\_identifier) | Unique identifier name for the RDS database instance in AWS | `string` | n/a | yes |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | Name of the initial database to be created on RDS instance | `string` | n/a | yes |
| <a name="input_db_password"></a> [db\_password](#input\_db\_password) | Secure password for database master user authentication and access control | `string` | n/a | yes |
| <a name="input_db_username"></a> [db\_username](#input\_db\_username) | Master username for accessing and administering the RDS database instance | `string` | n/a | yes |
| <a name="input_deployment_mode"></a> [deployment\_mode](#input\_deployment\_mode) | Specifies the deployment environment mode like production, staging or development | `string` | n/a | yes |
| <a name="input_ingress_cidr_block"></a> [ingress\_cidr\_block](#input\_ingress\_cidr\_block) | List of CIDR blocks allowed to connect to database security group | `list(string)` | n/a | yes |
| <a name="input_instance_class"></a> [instance\_class](#input\_instance\_class) | AWS RDS instance type determining CPU, memory, and network capacity | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet IDs where database can be placed for high availability | `list(string)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID where RDS database instance will be provisioned | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_subnet_group"></a> [db\_subnet\_group](#output\_db\_subnet\_group) | Name of the subnet group where RDS instance is deployed across AZs |
| <a name="output_random_pass"></a> [random\_pass](#output\_random\_pass) | Securely generated random password for database master user authentication |
| <a name="output_rds_endpoint"></a> [rds\_endpoint](#output\_rds\_endpoint) | Connection endpoint URL for accessing the RDS database instance and port |
| <a name="output_rds_instance_id"></a> [rds\_instance\_id](#output\_rds\_instance\_id) | Unique identifier assigned to the RDS database instance in AWS |
| <a name="output_rds_security_group_id"></a> [rds\_security\_group\_id](#output\_rds\_security\_group\_id) | Security group ID controlling network access rules for the RDS instance |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_null"></a> [null](#provider\_null) | n/a |
| <a name="provider_tls"></a> [tls](#provider\_tls) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_instance_profile.ec2_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.ec2_assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.s3_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.secrets_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_instance.ec2_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_key_pair.ec2_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_security_group.ec2_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [null_resource.ec2_prov_rmt](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.ec2_prov_rmt_via_bastion](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [tls_private_key.example](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_rmt_via_bastion"></a> [allow\_rmt\_via\_bastion](#input\_allow\_rmt\_via\_bastion) | Enable remote access to instance through a bastion host | `bool` | `false` | no |
| <a name="input_allow_rmte_exec"></a> [allow\_rmte\_exec](#input\_allow\_rmte\_exec) | Enable remote command execution capabilities on the EC2 instance | `bool` | `false` | no |
| <a name="input_allow_user_data"></a> [allow\_user\_data](#input\_allow\_user\_data) | Enable execution of user data scripts during instance launch | `bool` | `false` | no |
| <a name="input_ami"></a> [ami](#input\_ami) | Amazon Machine Image ID that defines the instance operating system | `string` | n/a | yes |
| <a name="input_app_db_cidr"></a> [app\_db\_cidr](#input\_app\_db\_cidr) | CIDR blocks allowed for database access from application servers | `list(string)` | <pre>[<br/>  " "<br/>]</pre> | no |
| <a name="input_app_peer_cidr"></a> [app\_peer\_cidr](#input\_app\_peer\_cidr) | CIDR ranges for application VPC peering connection configuration | `list(string)` | <pre>[<br/>  " "<br/>]</pre> | no |
| <a name="input_associate_public_ip_address"></a> [associate\_public\_ip\_address](#input\_associate\_public\_ip\_address) | Enable public IP address assignment for external internet access | `bool` | `false` | no |
| <a name="input_bastion_ip"></a> [bastion\_ip](#input\_bastion\_ip) | IP address of the bastion host for secure remote access | `string` | `" "` | no |
| <a name="input_bastion_port"></a> [bastion\_port](#input\_bastion\_port) | SSH port number for establishing connection to bastion host | `number` | `22` | no |
| <a name="input_bastion_private_key"></a> [bastion\_private\_key](#input\_bastion\_private\_key) | Path to private SSH key file for bastion authentication | `string` | `" "` | no |
| <a name="input_bastion_username"></a> [bastion\_username](#input\_bastion\_username) | Username for authentication and login to the bastion host | `string` | `"ec2-user"` | no |
| <a name="input_create_iam_role"></a> [create\_iam\_role](#input\_create\_iam\_role) | Toggle creation of IAM role for EC2 instance permissions | `bool` | `false` | no |
| <a name="input_create_sg"></a> [create\_sg](#input\_create\_sg) | Toggle to create a new security group for the instance | `bool` | `false` | no |
| <a name="input_default_egress_internet"></a> [default\_egress\_internet](#input\_default\_egress\_internet) | Allow outbound internet traffic for instances in security group | `bool` | `false` | no |
| <a name="input_deployment_mode"></a> [deployment\_mode](#input\_deployment\_mode) | Deployment environment mode specification for infrastructure configuration setup | `string` | n/a | yes |
| <a name="input_ec2_assume_role_policy"></a> [ec2\_assume\_role\_policy](#input\_ec2\_assume\_role\_policy) | Trust policy document allowing EC2 service to assume IAM role | `string` | `null` | no |
| <a name="input_enable_app_db_access"></a> [enable\_app\_db\_access](#input\_enable\_app\_db\_access) | Allow application servers to communicate with database instances securely | `bool` | `false` | no |
| <a name="input_enable_app_flask"></a> [enable\_app\_flask](#input\_enable\_app\_flask) | Allow access to Flask application endpoints through security rules | `bool` | `false` | no |
| <a name="input_enable_app_ssh"></a> [enable\_app\_ssh](#input\_enable\_app\_ssh) | Enable SSH access to application servers in the infrastructure | `bool` | `false` | no |
| <a name="input_enable_app_vpc_peering_eg"></a> [enable\_app\_vpc\_peering\_eg](#input\_enable\_app\_vpc\_peering\_eg) | Enable VPC peering egress traffic for application communication flow | `bool` | `false` | no |
| <a name="input_enable_app_vpc_peering_ig"></a> [enable\_app\_vpc\_peering\_ig](#input\_enable\_app\_vpc\_peering\_ig) | Enable VPC peering ingress traffic for application access control | `bool` | `false` | no |
| <a name="input_enable_bastion_ssh"></a> [enable\_bastion\_ssh](#input\_enable\_bastion\_ssh) | Allow SSH access through bastion host for secure connections | `bool` | `false` | no |
| <a name="input_enable_connect_ssh"></a> [enable\_connect\_ssh](#input\_enable\_connect\_ssh) | Allow SSH connections for remote access to connect servers | `bool` | `false` | no |
| <a name="input_enable_connect_vpc_peering"></a> [enable\_connect\_vpc\_peering](#input\_enable\_connect\_vpc\_peering) | Enable VPC peering connections for cross-network communication setup | `bool` | `false` | no |
| <a name="input_enable_nginx_http"></a> [enable\_nginx\_http](#input\_enable\_nginx\_http) | Enable HTTP traffic access to nginx web server instances | `bool` | `false` | no |
| <a name="input_enable_nginx_ssh"></a> [enable\_nginx\_ssh](#input\_enable\_nginx\_ssh) | Allow SSH access to nginx servers through security group rules | `bool` | `false` | no |
| <a name="input_enable_ssh"></a> [enable\_ssh](#input\_enable\_ssh) | Enable SSH access globally for all applicable instance types | `bool` | `false` | no |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | Name of EC2 instance to be created in AWS infrastructure | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Size and compute capacity of the EC2 instance to launch | `string` | n/a | yes |
| <a name="input_key"></a> [key](#input\_key) | Name of SSH key pair for secure instance access authentication | `string` | `" "` | no |
| <a name="input_remote_exec_cmds"></a> [remote\_exec\_cmds](#input\_remote\_exec\_cmds) | List of remote commands to execute during instance initialization | `list(string)` | <pre>[<br/>  " "<br/>]</pre> | no |
| <a name="input_s3_access_policy"></a> [s3\_access\_policy](#input\_s3\_access\_policy) | IAM policy document for S3 bucket access permissions configuration | `string` | `null` | no |
| <a name="input_sg_id"></a> [sg\_id](#input\_sg\_id) | Identifier for the security group to associate with instance | `string` | `" "` | no |
| <a name="input_sg_ssh_cidr"></a> [sg\_ssh\_cidr](#input\_sg\_ssh\_cidr) | List of CIDR blocks allowed for SSH access to instances | `list(string)` | <pre>[<br/>  " "<br/>]</pre> | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | ID of the subnet where the EC2 instance will be deployed | `string` | n/a | yes |
| <a name="input_user_data_path"></a> [user\_data\_path](#input\_user\_data\_path) | File path to the user data script for instance configuration | `string` | `" "` | no |
| <a name="input_user_ip"></a> [user\_ip](#input\_user\_ip) | List of user IP addresses allowed to access the infrastructure | `list(string)` | <pre>[<br/>  " "<br/>]</pre> | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of Virtual Private Cloud network for instance deployment | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_role_arn"></a> [iam\_role\_arn](#output\_iam\_role\_arn) | arn of the ec2 role that is created |
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | ID of the EC2 instance |
| <a name="output_private_ip"></a> [private\_ip](#output\_private\_ip) | Private IP address of the EC2 instance |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | Public IP address of the EC2 instance |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | ID of the created security group (if created) |
| <a name="output_sg_id"></a> [sg\_id](#output\_sg\_id) | ID of the created security group (if created) |
| <a name="output_tls_key"></a> [tls\_key](#output\_tls\_key) | private key for the vms |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lb.nlb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.nlb_listener](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_target_group.target_grp](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |
| [aws_lb_target_group_attachment.nlb_tg_atch_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_appln_port"></a> [appln\_port](#input\_appln\_port) | Port number on which the target application listens for incoming traffic | `number` | n/a | yes |
| <a name="input_del_protection"></a> [del\_protection](#input\_del\_protection) | Enable deletion protection to prevent accidental removal of load balancer | `bool` | `false` | no |
| <a name="input_deployment_mode"></a> [deployment\_mode](#input\_deployment\_mode) | Deployment environment mode specification for infrastructure configuration management | `string` | n/a | yes |
| <a name="input_enable_cross_zone_lb"></a> [enable\_cross\_zone\_lb](#input\_enable\_cross\_zone\_lb) | Enable cross-zone load balancing for distributing traffic across multiple zones | `bool` | n/a | yes |
| <a name="input_lb_internal_facing"></a> [lb\_internal\_facing](#input\_lb\_internal\_facing) | Specify whether the load balancer is internal or internet-facing for access | `bool` | `false` | no |
| <a name="input_lb_name"></a> [lb\_name](#input\_lb\_name) | Name of the load balancer to be created in AWS environment | `string` | n/a | yes |
| <a name="input_lb_type"></a> [lb\_type](#input\_lb\_type) | Type of load balancer to deploy - application, network or gateway | `string` | n/a | yes |
| <a name="input_listener_port"></a> [listener\_port](#input\_listener\_port) | Port on which the load balancer listens for incoming client traffic | `number` | `80` | no |
| <a name="input_nlb_tg_name"></a> [nlb\_tg\_name](#input\_nlb\_tg\_name) | Name of the target group to associate with network load balancer | `string` | `"nlb_tg_1"` | no |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | Network protocol used for routing traffic through the load balancer | `string` | `"TCP"` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | List of subnet IDs where the load balancer will be provisioned | `list(string)` | n/a | yes |
| <a name="input_target_ids"></a> [target\_ids](#input\_target\_ids) | List of target resource IDs to register with load balancer configuration | `list(string)` | n/a | yes |
| <a name="input_target_type"></a> [target\_type](#input\_target\_type) | Type of target resource to register with load balancer target group | `string` | `"instance"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of Virtual Private Cloud where load balancer resources are deployed | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_nlb_dns"></a> [nlb\_dns](#output\_nlb\_dns) | DNS of the nlb that is created |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.lambda_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.lambda_basic_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.lambda_secrets_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.lambda_vpc_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_lambda_function.lambda_function](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [aws_lambda_invocation.test_lambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_invocation) | resource |
| [aws_lambda_layer_version.lambda_layer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_layer_version) | resource |
| [aws_security_group.lambda_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.lambda_to_rds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.rds_from_lambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_layer"></a> [create\_layer](#input\_create\_layer) | Flag to enable creation of new Lambda layer for shared dependencies | `bool` | `false` | no |
| <a name="input_create_role"></a> [create\_role](#input\_create\_role) | Flag to enable creation of new IAM role for Lambda function execution | `bool` | `false` | no |
| <a name="input_create_sg"></a> [create\_sg](#input\_create\_sg) | Flag to enable creation of new security group for Lambda function | `bool` | `false` | no |
| <a name="input_db_host"></a> [db\_host](#input\_db\_host) | Database endpoint hostname for establishing connection to the database | `string` | n/a | yes |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | Name of the specific database instance to be accessed within the server | `string` | n/a | yes |
| <a name="input_db_password"></a> [db\_password](#input\_db\_password) | Password for authenticating and accessing the database instance securely | `string` | n/a | yes |
| <a name="input_db_port"></a> [db\_port](#input\_db\_port) | Network port number where database service is listening for connections | `string` | n/a | yes |
| <a name="input_db_username"></a> [db\_username](#input\_db\_username) | Username for database authentication and access management | `string` | n/a | yes |
| <a name="input_deployment_mode"></a> [deployment\_mode](#input\_deployment\_mode) | Environment designation for deployment like production, staging or development | `string` | n/a | yes |
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | Unique name identifier for the Lambda function being created | `string` | `""` | no |
| <a name="input_handler"></a> [handler](#input\_handler) | Function entry point for Lambda execution (e.g., index.handler) | `string` | `""` | no |
| <a name="input_layer_arn"></a> [layer\_arn](#input\_layer\_arn) | ARN of existing Lambda layer to attach to the function | `string` | `""` | no |
| <a name="input_layer_name"></a> [layer\_name](#input\_layer\_name) | Name identifier for the Lambda layer containing shared dependencies | `string` | `""` | no |
| <a name="input_layer_s3_key"></a> [layer\_s3\_key](#input\_layer\_s3\_key) | Path to Lambda layer ZIP file within the specified S3 bucket | `string` | `""` | no |
| <a name="input_payload_file"></a> [payload\_file](#input\_payload\_file) | Path to JSON file containing test payload for Lambda invocation | `string` | n/a | yes |
| <a name="input_rds_sg"></a> [rds\_sg](#input\_rds\_sg) | Security group ID controlling network access to the RDS database instance | `string` | `" "` | no |
| <a name="input_role_arn"></a> [role\_arn](#input\_role\_arn) | ARN of existing IAM role for Lambda function execution permissions | `string` | `""` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | Name identifier for the Lambda function IAM role resource | `string` | `""` | no |
| <a name="input_run_test"></a> [run\_test](#input\_run\_test) | Flag to enable execution of Lambda function test with sample payload | `bool` | `false` | no |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | Runtime environment for Lambda function execution (e.g., python3.8, nodejs14.x) | `string` | `""` | no |
| <a name="input_s3_bucket"></a> [s3\_bucket](#input\_s3\_bucket) | Name of S3 bucket containing Lambda function deployment package | `string` | `""` | no |
| <a name="input_s3_key"></a> [s3\_key](#input\_s3\_key) | Path to Lambda function ZIP file within the specified S3 bucket | `string` | `""` | no |
| <a name="input_sg_id"></a> [sg\_id](#input\_sg\_id) | ID of existing security group for Lambda function network access | `string` | `""` | no |
| <a name="input_sg_name"></a> [sg\_name](#input\_sg\_name) | Name tag for the Lambda function security group resource | `string` | `""` | no |
| <a name="input_subnet_1_id"></a> [subnet\_1\_id](#input\_subnet\_1\_id) | ID of first subnet in availability zone for Lambda function deployment | `string` | `" "` | no |
| <a name="input_subnet_2_id"></a> [subnet\_2\_id](#input\_subnet\_2\_id) | ID of second subnet in different availability zone for redundancy | `string` | `" "` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of VPC where Lambda function and database resources will be deployed | `string` | `" "` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_delete_lambda_test_result"></a> [delete\_lambda\_test\_result](#output\_delete\_lambda\_test\_result) | Results of test invocation for DELETE operation Lambda function execution |
| <a name="output_function_name"></a> [function\_name](#output\_function\_name) | Name identifier of the deployed Lambda function for reference and invocation |
| <a name="output_get_by_id_lambda_test_result"></a> [get\_by\_id\_lambda\_test\_result](#output\_get\_by\_id\_lambda\_test\_result) | Results of test invocation for GET-BY-ID operation Lambda function execution |
| <a name="output_get_lambda_test_result"></a> [get\_lambda\_test\_result](#output\_get\_lambda\_test\_result) | Results of test invocation for GET operation Lambda function execution |
| <a name="output_invoke_arn"></a> [invoke\_arn](#output\_invoke\_arn) | Amazon Resource Name used for invoking Lambda function through API Gateway |
| <a name="output_lambda_id"></a> [lambda\_id](#output\_lambda\_id) | Unique identifier for the Lambda function used in AWS resource references |
| <a name="output_layer_arn"></a> [layer\_arn](#output\_layer\_arn) | Amazon Resource Name of Lambda layer containing shared function dependencies |
| <a name="output_post_lambda_test_result"></a> [post\_lambda\_test\_result](#output\_post\_lambda\_test\_result) | Results of test invocation for POST operation Lambda function execution |
| <a name="output_put_lambda_test_result"></a> [put\_lambda\_test\_result](#output\_put\_lambda\_test\_result) | Results of test invocation for PUT operation Lambda function execution |
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | Amazon Resource Name of IAM role defining Lambda function permissions |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | Security group ID controlling network access rules for the Lambda function |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_apigatewayv2_api.http_api](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_api) | resource |
| [aws_apigatewayv2_integration.lambda_integration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_integration) | resource |
| [aws_apigatewayv2_route.gtw_lamb_route](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_route) | resource |
| [aws_apigatewayv2_stage.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_stage) | resource |
| [aws_lambda_permission.api_gtw_permission](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_gtw_arn"></a> [api\_gtw\_arn](#input\_api\_gtw\_arn) | api gateway arn | `string` | `""` | no |
| <a name="input_api_gtw_id"></a> [api\_gtw\_id](#input\_api\_gtw\_id) | api gateway id | `string` | `""` | no |
| <a name="input_api_gtw_name"></a> [api\_gtw\_name](#input\_api\_gtw\_name) | api gateway name | `string` | `""` | no |
| <a name="input_create_api_gtw"></a> [create\_api\_gtw](#input\_create\_api\_gtw) | create api gateway | `bool` | `false` | no |
| <a name="input_create_integration"></a> [create\_integration](#input\_create\_integration) | enable lambda integration | `bool` | `false` | no |
| <a name="input_deployment_mode"></a> [deployment\_mode](#input\_deployment\_mode) | n/a | `string` | n/a | yes |
| <a name="input_lambda_function_name"></a> [lambda\_function\_name](#input\_lambda\_function\_name) | lambda function name | `string` | `""` | no |
| <a name="input_lambda_invoke_arn"></a> [lambda\_invoke\_arn](#input\_lambda\_invoke\_arn) | lambda function arn | `string` | `""` | no |
| <a name="input_lambda_route_key"></a> [lambda\_route\_key](#input\_lambda\_route\_key) | api route key | `string` | `""` | no |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | api protocol type | `string` | `""` | no |
| <a name="input_stage_name"></a> [stage\_name](#input\_stage\_name) | deployment stage name | `string` | `"$default"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_url"></a> [api\_gateway\_url](#output\_api\_gateway\_url) | api gateway endpoint url |
| <a name="output_api_gtw_execution_arn"></a> [api\_gtw\_execution\_arn](#output\_api\_gtw\_execution\_arn) | api execution arn |
| <a name="output_api_gtw_id"></a> [api\_gtw\_id](#output\_api\_gtw\_id) | api gateway id |
| <a name="output_delete_recipe_url"></a> [delete\_recipe\_url](#output\_delete\_recipe\_url) | delete recipe endpoint |
| <a name="output_get_recipe_by_id_url"></a> [get\_recipe\_by\_id\_url](#output\_get\_recipe\_by\_id\_url) | get single recipe endpoint |
| <a name="output_get_recipes_url"></a> [get\_recipes\_url](#output\_get\_recipes\_url) | get all recipes endpoint |
| <a name="output_post_recipe_url"></a> [post\_recipe\_url](#output\_post\_recipe\_url) | create recipe endpoint |
| <a name="output_put_recipe_url"></a> [put\_recipe\_url](#output\_put\_recipe\_url) | update recipe endpoint |
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.s3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.bucket_acl](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_ownership_controls.s3_bucket_acl_ownership](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_policy.bucket_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_public_access_block.public_access_block](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_object.object](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [aws_vpc_endpoint.s3_endpoint](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint_route_table_association.s3_endpoint_route](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint_route_table_association) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acc_id"></a> [acc\_id](#input\_acc\_id) | AWS account ID for cross-account access and resource policies | `string` | `" "` | no |
| <a name="input_acl"></a> [acl](#input\_acl) | Access Control List defining bucket permissions (private or public-read) | `string` | `"private"` | no |
| <a name="input_allowed_ip"></a> [allowed\_ip](#input\_allowed\_ip) | List of IP addresses or CIDR ranges allowed to access the S3 bucket | `list(string)` | <pre>[<br/>  " "<br/>]</pre> | no |
| <a name="input_allowed_role_arns"></a> [allowed\_role\_arns](#input\_allowed\_role\_arns) | List of IAM role ARNs permitted to access the S3 bucket resources | `list(string)` | `[]` | no |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Unique name for the S3 bucket to be created in AWS account | `string` | n/a | yes |
| <a name="input_create_endpoint"></a> [create\_endpoint](#input\_create\_endpoint) | Flag to enable or disable creation of VPC endpoint for private S3 access | `bool` | `false` | no |
| <a name="input_deployment_mode"></a> [deployment\_mode](#input\_deployment\_mode) | Environment designation for deployment like production, staging or development | `string` | n/a | yes |
| <a name="input_obj_path"></a> [obj\_path](#input\_obj\_path) | Local file system path to objects intended for S3 bucket upload | `string` | `""` | no |
| <a name="input_policy_file"></a> [policy\_file](#input\_policy\_file) | Path to JSON file containing custom bucket policy configuration | `string` | `""` | no |
| <a name="input_route_table_ids"></a> [route\_table\_ids](#input\_route\_table\_ids) | List of route table IDs to associate with the VPC endpoint | `list(string)` | `[]` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | AWS service name for endpoint connection (e.g., s3, dynamodb) | `string` | `""` | no |
| <a name="input_upload_obj"></a> [upload\_obj](#input\_upload\_obj) | Flag to enable or disable automatic object upload during bucket creation | `bool` | `false` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | Target VPC identifier where S3 endpoint will be created for secure access | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_s3_bucket_arn"></a> [s3\_bucket\_arn](#output\_s3\_bucket\_arn) | Amazon Resource Name (ARN) of the S3 bucket for IAM policy configuration |
| <a name="output_s3_bucket_id"></a> [s3\_bucket\_id](#output\_s3\_bucket\_id) | Unique identifier of the created S3 bucket for resource referencing |
| <a name="output_vpc_endpoint_id"></a> [vpc\_endpoint\_id](#output\_vpc\_endpoint\_id) | Identifier of the VPC endpoint created for private S3 bucket access |
