resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = var.instance_type
        
    vpc_security_group_ids = [aws_security_group.allow_all.id]

    tags = var.ec2-tags
} 


resource "aws_security_group" "allow_all" {
    name = "allow-all"
    egress {
        from_port        = var.eggress_from_port
        to_port          = var.eggress_to_port
        protocol         = var.protocol
        cidr_blocks      = var.cidr
    }
    egress {
        from_port        = var.ingress_from_port
        to_port          = var.ingress_to_port
        protocol         = var.protocol
        cidr_blocks      = var.cidr
    }
  tags = {
    Name = "allow_all"
  }
}
