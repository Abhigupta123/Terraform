provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "abhishek" {
    ami = "ami-1232343421"
    instance_type = "t2.micro"
}

resource "aws_s3_bucket" "new_bucket" {
  bucket = "unique-bucket-name"

}

resource "aws_dynamodb_table" "terraform_lock" {
  name = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

// frist comment or delete the backend.tf file and then do terraform init
// after that uncomment the backend.tf and do terraform apply

#  by doing this the terraform.tfstate file wil not create in local and we do not need to push the state file
#  each time bcz the state file will be created in the s3 bucket.


// the dynamodb table will lock the execution , whenever multiple developers work on them it will hold the execution
// and then the other developer have to wait untill the execution of first developer is done . 