variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "security_group_id" {
  description = "The ID of the security group to attach to the instance"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where the instance will be launched"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone to launch the instance in"
  type        = string
  default     = "us-east-1b"
}

variable "key_name" {
  description = "The name of the SSH key pair for access"
  type        = string
}

variable "instance_tags" {
  description = "A map of additional tags to apply to the instance"
  type        = map(string)
  default     = {}
}

variable "script" {
  description = "The name of the SSH key pair for access"
  type        = string
}

