module "vpc" {
  #source = "git::https://github.com/nagendrakeerthipati/terraform-aws-instance.git?ref=main"
  source = "../terraform-aws-instance"

  project     = var.project
  environment = var.environment

  public_subnet_cidr   = var.public_subnet_cidrs
  private_subnet_cidr  = var.private_subnet_cidrs
  database_subnet_cidr = var.database_subnet_cidrs

  is_peering_required = true
}
