variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "availability_zones" {
  type = list(string)

  default = [
    "us-east-1a",
    "us-east-1b"
  ]
}

variable "container_image" {
  description = "Docker image URI for the ECS container"
  type        = string
}

variable "container_port" {
  description = "Port the application listens on"
  type        = number
  default     = 8000
}
