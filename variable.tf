variable "access_key"{
}
variable "secret_access_key"{
}
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"
}
variable "instance_type"{
    description="EC2 Instance type"
    type =string
    default="t3.micro"
}

variable "vpc_create_database_subnet_group" {
  description = "Flag to create a database subnet group"
  type        = bool
  default     = false  
}
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string  
  default     = "10.0.0.0/16"  
}
variable "vpc_private_subnets" {
  description = "List of private subnets"
  type        = list(string)  
  default     = ["10.10.0.0/16", "10.20.0.0/16"]  # Set the default value based on your requirements
}
variable "vpc_availability_zones" {
  description = "List of availability zones for the VPC"
  type        = list(string)  
  default     = ["us-east-1", "us-east-2"]  
}
variable "vpc_create_database_subnet_route_table" {
  description = "Flag to create a route table for database subnets"
  type        = bool
  default     = false  
}
variable "vpc_single_nat_gateway" {
  description = "Flag to use a single NAT gateway"
  type        = bool
  default     = false  
}
variable "vpc_public_subnets" {
  description = "List of public subnets"
  type        = list(string)  # Update the type based on your subnet format
  default     = []  
}
variable "vpc_enable_nat_gateway" {
  description = "Flag to enable NAT gateway for outbound communication"
  type        = bool
  default     = false  
}
variable "vpc_database_subnets" {
  description = "List of database subnets"
  type        = list(string)  # Update the type based on your subnet format
  default     = []  
}
variable "vpc_name" {
  description = "Name for the VPC"
  type        = string  # Update the type based on your naming convention
  default     = "example-vpc"  
}
