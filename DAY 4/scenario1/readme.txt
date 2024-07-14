first do 
1)
import {
    id = " i-83912838120"

    to = aws_terraform.example
}

2)

terraform init

3)

terraform plan -generate-config-out=generated_resources.tf


4)
there will be a file is created named   generated_resources.tf   

copy the resource section and paste it to main.tf and also comment the import section which was written previously on main.tf

5)

terraform import aws_instance.example i-9923791283

6)

now do 

terraform plan 

you will see a msg " your infrastructure matches the configuration"
