resource "aws_route_53" "expense" {
    count = length(var.instance_names)
    zone_id = "Z09903562VXZQBZB5OUJC"
    name = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"              #frontend.chaitanyaproject.online
    records = var.instance_names[count.index] == "frontend" ? [aws_instance.terraform[count.index].public_ip] : [aws_instance.terraform[coount.index].public_ip]
    type = "A"
    ttl = 1
    allow_overwrite = true
}