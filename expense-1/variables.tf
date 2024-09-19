variable "instance_names" {
    type = list(string)
    default = ["mysql", "frontend", "backend"]

}
variable "domain_name" {
    default = "chaitanyaproject.online"
}
variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}