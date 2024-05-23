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