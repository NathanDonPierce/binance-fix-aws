variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "ap-northeast-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_pair_name" {
  description = "Name of existing EC2 key pair used for SSH access"
  type        = string
}

variable "ssh_user" {
  description = "Default SSH user for the chosen AMI"
  type        = string
  default     = "ec2-user"
}

variable "ami_id" {
  description = "AMI ID for RHEL in the target region"
  type        = string
}

variable "my_ip_cidr" {
  description = "IP in CIDR notation, for SSH access to the Ansible control node"
  type        = string
}

variable "instance_count" {
  description = "Number of ws-client instances to create"
  type        = number
  default     = 1
}

variable "aws_profile" {
  description = "AWS CLI profile to use."
  type        = string
  default     = ""
}

variable "project_name" {
  description = "Project tag applied to all resources"
  type        = string
  default     = "ws-project"
}