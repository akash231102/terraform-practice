variable "instances" {
    default = {
        mongodb = "t3.micro"
        redis = "t3.small"
    }
}

variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}