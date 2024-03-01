resource "ciscomcd_service_vpc" "security-vpc-aws" {
	name = var.aws_service_vpc.name
	csp_account_name = var.aws_service_vpc.csp_account_name
	region = var.aws_service_vpc.region
	cidr = var.aws_service_vpc.cidr
	availability_zones = var.aws_service_vpc.availability_zones
	transit_gateway_id = var.aws_service_vpc.transit_gateway_id
	use_nat_gateway = var.aws_service_vpc.use_nat_gateway
}