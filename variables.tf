variable "VALTIX_API_KEY_FILE" { type = string }

## AWS SETTINGS
### GATEWAY SETTINGS
variable "csp_account_name" { type = string }
variable "instance_type" { type = string }
variable "mode" { type = string }
variable "min_instances" { type = string }
variable "max_instances" { type = string }
variable "health_check_port" { type = string }
variable "region" { type = string }
variable "aws_iam_role_firewall" { type = string }
variable "gateway_image" { type = string }
variable "ssh_key_pair" { type = string }

variable "aws_ingress_gw" {
  type = object({
    name          = string
    security_type = string
  })
}

variable "aws_egress_gw" {
  type = object({
    name           = string
    security_type  = string
    aws_gateway_lb = string
  })
}

### SERVICE VPC SETTINGS
variable "aws_service_vpc" {
  type = object({
    name               = string
    csp_account_name   = string
    region             = string
    cidr               = string
    availability_zones = list(string)
    transit_gateway_id = string
    use_nat_gateway    = bool
  })
}
