module "sg" {
  source       = "git::https://github.com/sujithyerra4/terraform-aws-sg.git?ref=main"
  project_name = var.project_name
  environment  = var.environment
  vpc_id       = module.vpc.vpc_id
  sg_name      = var.sg_name
  common_tags  = var.common_tags
  sg_tags      = var.sg_tags
}
