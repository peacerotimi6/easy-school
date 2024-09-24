variable "region" {
  description = "The AWS region to deploy to."
  default     = "us-east-1a"
}

variable "instance_type" {
  description = "The type of EC2 instance."
  default     = "t2.micro"
}
