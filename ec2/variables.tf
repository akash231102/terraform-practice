variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "ec2-tags" {
    type = map
    default = {
        Name = "terraform-demo"
        env = "dev"
        project = "join-devops"
    }
}

variable "eggress_from_port" {
    default = 0
}

variable "eggress_to_port" {
    default = 0
}

variable "ingress_from_port" {
    default = 0
}

variable "ingress_to_port" {
    default = 0
}

variable "cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "protocol" {
    type = string
    default = "-1"
}