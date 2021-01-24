resource "aws_instance" "daywear_instance" {
  ami = "ami-0e67aff698cb24c1d"   # ubuntu 18.04 EC2 instance
  instance_type = "t3.micro"
  key_name = aws_key_pair.daywear_admin.key_name
  vpc_security_group_ids = [
    aws_security_group.daywear_ssh.id,
  ]
}
