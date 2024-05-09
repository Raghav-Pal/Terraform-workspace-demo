provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

# default ws resources
resource "aws_instance" "my_first_vm" {
  ami           = "ami-07caf09b362be10b8"
  instance_type = var.instance_type
  tags = {
    Name = "My_New_LinuxVM"
  }
}

# Dev-specific resources
resource "aws_instance" "dev_instance" {
  count         = terraform.workspace == "dev" ? 1 : 0
  ami           = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"
  tags = {
    Name = "dev_instance1"
  }
  # Other dev-specific settings...
}

# QA-specific resources
resource "aws_instance" "qa_instance" {
  count         = terraform.workspace == "qa" ? 1 : 0
  ami           = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"
  tags = {
    Name = "qa_instance1"
  }
  # Other QA-specific settings...
}
