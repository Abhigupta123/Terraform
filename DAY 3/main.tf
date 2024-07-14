provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "value of ami"
}

variable "instance_type" {
  description = "value of instance"
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "stage" ="t2.medium"
    "prod"="t2.large"
  }
}


module "anyname" {
    source = "./modules/ec2_instance"
    ami = var.ami
    # instance_type = var.instance_type

    instance_type = lookup(var.instance_type,terraform.workspace,"t2.micro")

}