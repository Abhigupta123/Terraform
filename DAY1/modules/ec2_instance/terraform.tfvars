ami_value = "ami-87487238479283"
instance_type_value = "t2.micro"


// This file is required while i have to make instances , but when other person make this will not required bcz
// these element will pass by the person who want to create instance



// if the file name of terraform.tfvars is something else , then we have to run different command instead 
// of terraform apply , we have to run  terraform apply -var-file=stage.tfvars (let file name is stage.tfvars)