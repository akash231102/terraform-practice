resource "aws_instance" "for" {
    for_each = var.instances
    ami = var.ami_id
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.allow-all.id]
}

resource "aws_security_group" "allow-all" {
    name = "allow-all"
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    ingress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }
  
}