resource "aws_instance" "provisioners" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    tags = {
      Name = "provisioners"
      project = "roboshop"
    }
    provisioner "local-exec" {
      command = "echo ${self.private_ip} > inventory"
      on_failure = continue
    }

    provisioner "local-exec" {
      command = "echo Instance is destroyed"
      when = destroy
    }

    connection {
      type = "ssh"
      user = "ec2-user"
      password = "DevOps321"
      host = self.public_ip
    }

    provisioner "remote-exec" {
      inline = [ 
         "sudo dnf install nginx -y",
         "sudo systemctl start nginx"
       ]
    }

    provisioner "remote-exec" {
      inline = [ 
         "sudo systemctl stop nginx",
         "echo successfully stopped nginx"
       ]
       when = destroy
    }
}