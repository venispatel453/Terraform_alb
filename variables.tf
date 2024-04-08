variable "lb_security_groups" {
  description = "Security groups for load balancer"
  type = list(string)
}

variable "subnet_ids" {
  description = "Subnet ids for load balaner"
  type        = list(string)
}

variable "env" {
  description = "Environment name"
  type        = string
}

variable "vpc_id" {
  description = "VPC id for vpc of load balancer"
}

variable "target_type" {
  description = "Target type for the target group"
  default = "ip"
  type = string
}