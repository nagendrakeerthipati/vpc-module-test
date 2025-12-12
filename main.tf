module "vpc" {
  source      = "git::https://github.com/nagendrakeerthipati/terraform-aws-vpc.git?ref=main"
  project     = var.project
  environment = var.environment

  # map the module's plural inputs to your root singular variables
  public_subnet_cidrs   = var.public_subnet_cidr
  private_subnet_cidrs  = var.private_subnet_cidr
  database_subnet_cidrs = var.database_subnet_cidr

  is_peering_required = true
}
