resource "aws_route53_record" "expense" {
    zone_id = var.zone_id
    count = length(var.instance_names)
    type = "A"
    ttl = 1
    name = "${var.instance_names[count.index]}.${var.domain_name}"                #backend.domain
    records = [aws_instance.expense[count.index].private_ip]             #ip
    allow_overwrite = true

}

