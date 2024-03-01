# Setup the resources in the service VPC in AWS
module "setup_vpc" {
  source          = "./0_aws_service_vpc"
  aws_service_vpc = var.aws_service_vpc
}

module "setup_gw" {
  source                = "./1_aws_gateways"
  aws_egress_gw         = var.aws_egress_gw
  aws_ingress_gw        = var.aws_ingress_gw
  csp_account_name      = var.csp_account_name
  instance_type         = var.instance_type
  mode                  = var.mode
  min_instances         = var.min_instances
  max_instances         = var.max_instances
  health_check_port     = var.health_check_port
  region                = var.region
  aws_iam_role_firewall = var.aws_iam_role_firewall
  gateway_image         = var.gateway_image
  ssh_key_pair          = var.ssh_key_pair
  svc_vpc_id            = module.setup_vpc.vpc_id
}