variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.2.0.0/16"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnet CIDRs"
  default = ["10.2.0.0/24", "10.2.1.0/24"]
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnet CIDRs"
  default     = ["10.2.10.0/24", "10.2.11.0/24"]

}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones"
  default     = [ "us-east-2a", "us-east-2b" ]
}