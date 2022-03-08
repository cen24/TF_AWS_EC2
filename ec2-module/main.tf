#below creates a simple ec2 instance called "coach32server". Make sure aws region matches region for ami id in aws console
resource "aws_instance" "webserver" {
  ami           = "ami-0c293f3f676ec4f90"
  instance_type = "t2.micro"
  tags = {
    Name = "coach32server"
  }
}

#below creates a simple public s3 bucket called "coach32serverbucket".
resource "aws_s3_bucket" "webserverbucket" {
  bucket = "coach32serverbucket"
}