variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name of the VPC"
  default     = "main-vpc"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  default     = "us-east-1a"
}

variable "subnet_name" {
  description = "Name of the subnet"
  default     = "main-subnet"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0e86e20dae9224db8"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "security_groups" {
  description = "List of security groups"
  type        = list(string)
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  default     = "web-instance"
}
