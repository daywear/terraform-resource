resource "aws_key_pair" "daywear_admin" {
  key_name = "daywear_admin"
  public_key = file("~/.ssh/ordersvc.pub")
}

resource "aws_security_group" "daywear_ssh" {
  name = "allow_ssh"
  description = "Allow SSH port from all"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
