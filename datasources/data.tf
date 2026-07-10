data "aws_ami" "akash" {
  owners      = ["973714476881"]
  most_recent = true

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}



