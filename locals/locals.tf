locals {
    domain_name = "chaitanyaproject.online"
    zone_id = "Z09903562VXZQBZB5OUJC"
    instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
}