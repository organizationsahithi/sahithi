variable "role" {
  type = string
   
 }
 variable "ami" {
  description = "The AMI to use for the instance."
  type        = string
}

variable "instance_type" {
  description = "The type of the instance."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the instance in."
  type        = string
}

variable "instance_name" {
  description = "The name to assign to the instance."
  type        = string
}

variable "key_name" {
  description = "The key name to use for the instance."
  type        = string
}
variable "bucket_name" {
  type = string
  
}







variable "region" {
  description = "The AWS region to deploy the VPC."
  type        = string
  default     = "us-east-1"
}

variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
  default     = "my-vpc"
}

variable "public_subnet_cidrs" {
  description = "A list of public subnet CIDR blocks."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  description = "A list of availability zones."
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}



