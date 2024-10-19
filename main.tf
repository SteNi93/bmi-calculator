provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "task3" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  subnet_id              = var.subnet_id
  availability_zone      = var.availability_zone
  tags = var.instance_tags
  key_name = var.key_name
  user_data = var.script
}

output "instance_public_ip" {
  value = aws_instance.task3.public_ip
}
