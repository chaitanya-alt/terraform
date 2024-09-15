variable "instance_names" {
    type = list(string)
    default = ["mysql","backend","frontend"]

}
variable "common_tags" {
    type = map
    default = {
        project = "expense"
        environment = "development"
        terraform = "true"
    }
}

variable "zone_id" {
    default = "Z09903562VXZQBZB5OUJC"
}

variable "domain_name" {
    default = "chaitanyaproject.online"
}