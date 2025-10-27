variable "environment" {
  description = "Environment name."
  type        = string
}

variable "region" {
  description = "AWS Region."
  type        = string

  validation {
    condition     = can(regex("[a-z]{2}-[a-z]+-[1-4]", var.region))
    error_message = "Must be valid AWS region!"
  }
}

variable "private_subnets_config" {
  type        = map(any)
  description = "Private Subnets Config."
}

variable "public_subnets_config" {
  type        = map(any)
  description = "Public Subnets Config."
}

variable "ipv4_main_cidr_block" {
  type        = any
  description = "Primary VPC CIDR block."
}

variable "enable_internet_gateway" {
  type        = bool
  description = "A boolean flag to enable/disable the internet gateway."
}

variable "enable_single_nat_gateway" {
  type        = bool
  description = "A boolean flag to enable/disable the NAT gateway."
}

variable "enable_s3_interface_endpoint" {
  type        = bool
  description = "A boolean flag to enable/disable the S3 interface endpoint."
}


variable "enable_ssm_interface_endpoint" {
  type        = bool
  description = "A boolean flag to enable/disable the SSM interface endpoint."
}