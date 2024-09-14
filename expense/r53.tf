resource "aws_route53_record" "expense" {
    zone_id = var.zone_id
    count = length(var.instance_name)
    type = "A"
    ttl = 1
    name = "${var.instance_names}"."${var.domain_name}"                #backend.online.com
    records = [aws_instance.expense[count.index].private_ip]              #ip
    allow_overwrite = true

}