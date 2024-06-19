resource "aws_instance" "hello" {
  ami           = var.ami
  instance_type = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
}