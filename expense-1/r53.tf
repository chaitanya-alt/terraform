resource "aws_route_53" "expense" {
    count = length(var.instance_names)
    zone_id = "Z09903562VXZQBZB5OUJC"
    name = var.instance_names[count.index] == "frontend" ? var.domain_name : $"{var.instance_names[count.index]}.${var.domain_name}"              #frontend.chaitanyaproject.online
    records = 
    type = "A"
    ttl = 1
    allow_overwrite = true
}