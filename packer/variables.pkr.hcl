
##variables

variable "aws_region" {
    type = string
    description = "My aws region"
    default = "ap-south-1"
}
variable "project_name" {
    type = string
    description = "My project name"
    default = "zomato"
}
variable "project_environment" {
    type = string
    description = "My project environment"
    default = "production"
}
variable "ami_id" {
    type = string
    description = "My instance ami id"
    default =  "ami-0f9708d1cd2cfee41"
}

variable "instance_type" {
    type = string
    description = "My instance type"
    default = "t2.micro"
}

locals {
    timestamp = formatdate("YYYY-MM-DD-HH-mm", timestamp())
    image_name = "${var.project_name}-${var.project_environment}-${local.timestamp}"
}

