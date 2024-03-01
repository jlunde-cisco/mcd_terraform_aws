resource "ciscomcd_gateway" "egress-aws-east-1" {
	name = var.aws_egress_gw.name
	csp_account_name = var.csp_account_name
	instance_type = var.instance_type
	mode = var.mode
	policy_rule_set_id = ciscomcd_policy_rule_set.egressew_policy_group.id
	min_instances = var.min_instances
	max_instances = var.max_instances
	health_check_port = var.health_check_port
	region = var.region
	vpc_id = var.svc_vpc_id
	aws_iam_role_firewall = var.aws_iam_role_firewall
	gateway_image = var.gateway_image
	ssh_key_pair = var.ssh_key_pair
	security_type = var.aws_egress_gw.security_type
	aws_gateway_lb = var.aws_egress_gw.aws_gateway_lb
	settings {
		name = "controller.gateway.assign_public_ip"
		value = "true"
	}
	settings {
		name = "gateway.aws.ebs.encryption.key.default"
		value = ""
	}
	settings {
		name = "gateway.snat_mode"
		value = "0"
	}
    depends_on = [ ciscomcd_policy_rule_set.egressew_policy_group ]
}

resource "ciscomcd_gateway" "ingress-aws-east-1" {
	name = var.aws_ingress_gw.name
	csp_account_name = var.csp_account_name
	instance_type = var.instance_type
	mode = var.mode
	policy_rule_set_id = ciscomcd_policy_rule_set.ingress_policy_group.id
	min_instances = var.min_instances
	max_instances = var.max_instances
	health_check_port = var.health_check_port
	region = var.region
	vpc_id = var.svc_vpc_id
	aws_iam_role_firewall = var.aws_iam_role_firewall
	gateway_image = var.gateway_image
	ssh_key_pair = var.ssh_key_pair
	security_type = var.aws_ingress_gw.security_type
	settings {
		name = "controller.gateway.assign_public_ip"
		value = "true"
	}
	settings {
		name = "gateway.aws.ebs.encryption.key.default"
		value = ""
	}
	settings {
		name = "gateway.snat_mode"
		value = "0"
	}
    depends_on = [ ciscomcd_policy_rule_set.ingress_policy_group ]
}