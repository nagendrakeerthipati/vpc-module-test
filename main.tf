module "vpc" {
  source      = "../terraform-aws-instance"
  project     = "Roboshop"
  environment = "dev"


}
