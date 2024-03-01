## AWS SETTINGS
### GATEWAY SETTINGS
variable "csp_account_name" {type=string}
variable "instance_type" {type=string}
variable "mode" {type=string}
variable "min_instances" {type=string}
variable "max_instances" {type=string}
variable "health_check_port" {type=string}
variable "region" {type=string}
variable "aws_iam_role_firewall" {type=string}
variable "gateway_image" {type=string}
variable "ssh_key_pair" {type=string}
variable "svc_vpc_id" {type=string}

variable aws_ingress_gw {
  type = object({
    name = string
    security_type = string
  })
}

variable aws_egress_gw {
  type = object({
    name = string
    security_type = string
    aws_gateway_lb = string
  })
}