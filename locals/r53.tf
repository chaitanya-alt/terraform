resource "aws_route53_record"  "terraform" {
    count = length(var.instance_names)
    name = var.instance_names[count.indec] == frontend ? local.domain_name : "${var.instance_names[count.index]}"."${local.domain_name}"
    record = var.instance_names == "frontend" ? [aws_instance.terraform[count.index].public_ip] : [aws_instance.terraform[count.index].private_ip]
    type = "A"
    zone_id = local.zone_id
    ttl = 1
    allow_overwrite = true
}