variable "project" {
    default = "roboshop" 
}

variable "env" {
    default = "dev" 
}

variable "common_tags" {
    type = map
    default = {
        terraform = true
        project = "roboshop"
        environment = "dev"
    }
}