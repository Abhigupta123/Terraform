provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "value of ami"
}

variable "instance_type" {
  description = "value of instance"
}

resource "aws_instance" "example" {
  
ami = ""
instance_type = ""

}