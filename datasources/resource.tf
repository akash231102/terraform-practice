 resource "aws_instance" "terraform" {
     ami = data.aws_ami.akash.id
     instance_type = "t3.micro"
     tags = {
         Name = "terraform"
         Terraform = "true"
     }
 }