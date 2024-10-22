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
