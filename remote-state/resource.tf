resource "aws_instance" "terraform" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = local.instance_type
    tags = {
        name = "akash"
    }      
}
