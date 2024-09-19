locals {
    domain_name = "chaitanyaproject.online"
    zone_id = "Z09903562VXZQBZB5OUJC"
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
}