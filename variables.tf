variable "prefix" {
  description = "The descriptio for each environment, ie: bin-dev"
  type        = string
}

variable "tags" {
  description = "The tags for the resources"
  type        = map(any)
  default     = {}
}

variable "description" {
  description = "Description for the resources"
  default     = ""
  type        = string
}

variable "fivetuple_stateful_rule_group" {
  description = "Config for 5-tuple type stateful rule group"
  default     = []
  type        = any
}

variable "domain_stateful_rule_group" {
  description = "Config for domain type stateful rule group"
  default     = []
  type        = any
}

variable "suricata_stateful_rule_group" {
  description = "Config for Suricata type stateful rule group"
  default     = []
  type        = any
}

variable "stateless_rule_group" {
  description = "Config for stateless rule group"
  type        = any
}

variable "firewall_name" {
  description = "firewall name"
  type        = string
  default     = "example"
}

variable "subnet_mapping" {
  description = "Subnet ids mapping to have individual firewall endpoint"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "stateless_default_actions" {
  description = "Default stateless Action"
  type        = string
  default     = "forward_to_sfe"
}

variable "stateless_fragment_default_actions" {
  description = "Default Stateless action for fragmented packets"
  type        = string
  default     = "forward_to_sfe"
}

variable "firewall_policy_change_protection" {
  type        = string
  description = "(Option) A boolean flag indicating whether it is possible to change the associated firewall policy"
  default     = false
}

variable "subnet_change_protection" {
  type        = string
  description = "(Optional) A boolean flag indicating whether it is possible to change the associated subnet(s)"
  default     = false
}

variable "logging_config" {
  description = "logging config for cloudwatch logs created for network firewall"
  type        = map(any)
  default     = {}
}

variable "aws_managed_rule_group" {
  description = "List of AWS managed rule group arn"
  type        = list(any)
  default     = []
}

variable "stateful_rule_order" {
  type        = string
  description = "Indicates how to manage the order of the rule evaluation for the rule group. Valid values: DEFAULT_ACTION_ORDER, STRICT_ORDER."
  default     = "STRICT_ORDER"
}

variable "stateful_default_actions" {
  description = "Set of actions to take on a packet if it does not match any stateful rules in the policy. . You can specify one of either or neither values of aws:drop_strict or aws:drop_established, as well as any combination of aws:alert_strict and aws:alert_established"
  type        = list(any)
  default     = ["aws:drop_strict", "aws:alert_strict"]
}
