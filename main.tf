resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "test_vpp"
    }
  
}


resource "aws_subnet" "name2" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.0.0/24"
    tags = {
      Name = "mysubnet1"
    }
  
}
resource "aws_instance" "example_server" {
  ami           = "ami-01b14b7ad41e17ba4" # Update with a valid AMI ID for your region
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2-Example"
  }
}
