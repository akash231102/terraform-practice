variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = string
    default = "dev"
}

variable "tags" {
    type = map
    default = {
        Name = "conditions"
        env = "prod"
    }
}