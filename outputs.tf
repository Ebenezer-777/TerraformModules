output "output_public_ip" {
  value = aws_instance.my_server.public_ip
  description = "EC2 Public IP"
}