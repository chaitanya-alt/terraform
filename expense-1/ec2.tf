resource "aws_security_group" "allow_ssh_terraform" {
    name = "allow_ssh"
    description = "allow port 22"

    egress {
        from_port = 0
        to_port =  0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]

    }
}

resource "aws_instance" "expense" {
    count = length(var.instance_names)
    ami = var.ami_id
    instance_type = var.instance_names[count.index] == "mysql" ? "t3.small" : "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
    tags = {
        Name = var.instance_names[count.index]
    }
}
