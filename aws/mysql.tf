resource "aws_db_instance" "daywear_mysql" {
  allocated_storage = 8
  engine = "mysql"
  engine_version = "8.0.20"
  instance_class = "db.t3.micro"
  username = "admin"
  password = "daywear1234!"     # should be changed after apply
  skip_final_snapshot = true
}