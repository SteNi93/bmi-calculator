aws_region = "us-east-1"
ami_id = "ami-0f6649b7208939434"
instance_type = "t2.micro"
security_group_id = "sg-0c156adde3a3e344a"
subnet_id = "subnet-0780f7dfb45f4472a"
availability_zone = "us-east-1b"
instance_tags = {
  Name       = "stefan-ec2-terraformed"
  createdBy = "stefan.nikolic"
}
key_name = "Nicolic"
script = "${file("script.sh")}"