provider "aws" {
     region = "${var.aws_region}"
}

resource "aws_key_pair" "ssh-key" {
  key_name   = "ssh-key"
  public_key = "${file(var.public_key_path)}"
}

resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

resource "aws_instance" "httpbin" {
     ami           = "ami-0279c3b3186e54acd"
     instance_type = "t2.micro"
     count         = 2
     associate_public_ip_address = true
     key_name      = "ssh-key"
     user_data     = <<EOF
#!/bin/bash
sudo apt-get update
sudo apt install -y docker.io
sudo docker run -d -p 8080:80 kennethreitz/httpbin
EOF
}

output "public_ip" {
  value = aws_instance.httpbin.*.public_ip
}
