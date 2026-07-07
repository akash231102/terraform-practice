resource "aws_instance" "conditions" {
    ami = var.ami_id
    instance_type = var.instance_type == "dev" ? "t3.micro" : "t3.small" 
    tags = var.tags
}
  