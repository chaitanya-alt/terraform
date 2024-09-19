variable "instance_names" {
    type = list(string)
    default = ["mysql", "frontend", "backend"]

}

variable "environment" {
    default = "prod"
}