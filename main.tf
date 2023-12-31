
resource "aws_instance" "my_server" {
  ami           = "ami-079db87dc4c10ac91"
  instance_type = var.instance_type

  tags = {
    Name = "MyServer-${local.Name}-${terraform.workspace}"
  }
}
