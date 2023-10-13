terraform {
        required_providers {
        aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
		}
	}	
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "aws_ec2" {   
    ami = "ami-0f5ee92e2d63afc18"
    instance_type = "t2.micro"
    tags = {
        Name = "Terraform_aws"
    }
}

output "aws_instance_ip" {
    value = aws_instance.aws_ec2.public_ip
}