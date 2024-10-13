module "net_a" {
  source     = "../../../modules/network/vpc"
  cidr_block = "10.0.0.0/16"
  vpc_name   = "net-a"
}

module "net_a-subnets" {
  source      = "../../../modules/network/subnet"
  for_each    = var.net_a-subnet
  vpc_id      = module.net_a.vpc_id
  subnet_name = each.value.subnet_name
  subnet_cidr = each.value.subnet_cidr
  subnet_az   = each.value.subnet_az
  depends_on  = [module.net_a]
}

module "subnet_a_rt" {
  source     = "../../../modules/network/route-table"
  vpc_id     = module.net_a.vpc_id
  rt_name    = "nginx-rt"
  subnet_ids = [module.net_a-subnets.subnet_a.subnet_id]
  depends_on = [module.net_a]
}

module "subnet_b_rt" {
  source     = "../../../modules/network/route-table"
  vpc_id     = module.net_a.vpc_id
  rt_name    = "connect-rt"
  subnet_ids = [module.net_a-subnets.subnet_b.subnet_id]
  depends_on = [module.net_a-subnets]
}

module "gateway-a" {
  source         = "../../../modules/gateway"
  create_igw     = true
  vpc_id         = module.net_a.vpc_id
  subnet_id      = module.net_a-subnets.subnet_a.subnet_id
  pub_rt_id      = module.subnet_a_rt.route_table_id
  priv_rt_id     = module.subnet_b_rt.route_table_id
  igw_name       = "ig-nginx"
  create_igw_rte = true
  depends_on     = [module.net_a-subnets]
}