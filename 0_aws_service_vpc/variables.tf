### SERVICE VPC SETTINGS
variable aws_service_vpc {
  type = object({
	name = string
	csp_account_name = string
	region = string
	cidr = string
	availability_zones = list(string)
	transit_gateway_id = string
	use_nat_gateway = bool
  })
}