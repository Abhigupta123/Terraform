provider "aws" {
  region = "us-east-1"
}

import {
  id = "i-e987384293"

  to = aws_instance.example
}

