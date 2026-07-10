locals {
  ami_id = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  common_name = "${var.project}-${var.env}" # roboshop-dev
  ec2_tags = merge(
    var.common_tags,
    {
        Name = "${local.common_name}-local-demo"
    }
  )
}