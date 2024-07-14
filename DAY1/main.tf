provider "aws" {
  region = "us-east-1"
}


module "ec2_instance" {
  source = "./modules/ec2_instance"       // give the path where all the files (main,variables,outputs) are present
  ami_value = "ami-4235364456"
  instance_type_value = "t2.micro"
}


// 1> terraform init
// 2> terraform plan
// 3> terraform apply
// 4> terraform destroy