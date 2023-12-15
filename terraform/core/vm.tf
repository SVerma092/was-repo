resource "aws_instance" "web" {
  ami           = "ami-0759f51a90924c166s"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}