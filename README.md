Terraform Module to provision an EC2 Instance that is running Apache.

Not intended for production use. Just showcasing how to create a public module on Terraform Register

```hcl
terraform {

}

provider "aws" {
    region = "us-east-1"
}

module "apache" {clear
    source = ".//AWS_Server_Module"
    vpc_id = "vpc-0000000000"
    my_ip_with_cidr = "MY_OWN_IP_ADDRESS/32"
    public_key = "ssh-rsa AAAAB..."
    instance_type = "t2.micro"
    server_name = "Apache Example Server"
}

output "public_ip" {
    value = module.apache.public_ip
}
```