variable "Name" {
    default = ["mongodb", "redis", "rabbitmq", "mysql"]
}

variable "hosted_zone" {
    default = "Z09154821WUMLNGGFVNYJ"
}

variable "domain_name" {
    type = string
    default = "bugata.shop"
}