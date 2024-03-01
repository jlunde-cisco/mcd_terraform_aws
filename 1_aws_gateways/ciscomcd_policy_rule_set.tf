# Access the CiscoMCD Egress/EW Policy Name
resource "ciscomcd_policy_rule_set" "egress_policy_standalone" {
  name = "tf-egress-standalone"
}

# Create the CiscoMCD Egress/EW Policy Rule Set Group
resource "ciscomcd_policy_rule_set" "egressew_policy_group" {
  name = "tf-egress-group"
  type = "GROUP"
  group_member_ids = [
    ciscomcd_policy_rule_set.egress_policy_standalone.id
  ]
}

## Ingress Policies
resource "ciscomcd_policy_rule_set" "ingress_policy_standalone" {
  name = "tf-ingress-standalone"
}

resource "ciscomcd_policy_rule_set" "ingress_policy_group" {
  name = "tf-ingress-group"
  type = "GROUP"
  group_member_ids = [
    ciscomcd_policy_rule_set.ingress_policy_standalone.id
  ]
}