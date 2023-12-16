resource "aws_instance" "web" {
  ami           = "ami-0cd601a22ac9e6d79"
  instance_type = "t3.micro"
  key_name = aws_key_pair.deployer.key_name

  tags = {
    Name = "HelloWorld"
  }
  depends_on = [ aws_key_pair.deployer ]
}