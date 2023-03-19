variable "default_tags" {
  default = {
    "Owner" = "ACS730-Project",
    "App"   = "Web"
  }
  type        = map(any)
  description = "Default tags to be applied to all AWS resources"
}

variable "prefix" {
  type        = string
  default     = "Group0"
  description = "prefix"
}

variable "public_subnet_cidrs" {
  default     = ["10.100.1.0/24", "10.100.2.0/24", "10.100.3.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}

variable "private_subnet_cidrs" {
  default     = ["10.100.4.0/24", "10.100.5.0/24", "10.100.6.0/24"]
  type        = list(string)
  description = "Private Subnet CIDRs"
}

variable "vpc_cidr" {
  default     = "10.100.0.0/16"
  type        = string
  description = "VPC to host static web site"
}

variable "env" {
  default     = "Dev"
  type        = string
  description = "Environment"
}

variable "instance_type" {
  type    = string
  default = "t3.small"
}


variable "min_size" {
  type    = number
  default = "1"
}

variable "max_size" {
  type    = number
  default = "4"
}

variable "desired_capacity" {
  type    = number
  default = "2"
}

variable "your_bucket_name" {
  type    = string
  default = "group0bucket2"
}
variable "aws_ssh_key_pair" {
  type        = string
  description = "AWS SSH key pair"
  default     = "group0_key"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

