resource "aws_instance" "loops" {
    count = 4
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"

    tags = {
        Name = var.Name[count.index]
        env = "dev"
    }
}