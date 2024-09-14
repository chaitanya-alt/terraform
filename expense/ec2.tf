resource "aws_security_group" "aallow_ssh_terraform" {
    name = "allow_ssh"
    description = "to access port 22"

    egress {
        from_port = 0
        to_port = 0
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

    tags = merge(
        var.common_tags,
        {
            Name = "allow_ssh"

        }
        
    )
}

resource "aws_instance" "expense" {
    count = length(var.instance_names)
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.aallow_ssh_terraform.id]
    ami = "ami-09c813fb71547fc4f"

    tags = merge(
        var.common_tags,
        {
            Name = var.instance_names[count.index]
        }
    )
}