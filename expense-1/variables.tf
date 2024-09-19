variable "instance_names" {
    type = list(string)
    default = ["mysql", "frontend", "backend"]

}
variable "domain_name" {
    default = "chaitanyaproject.online"
}