variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq" ]
}

variable "zone_id" {
    default = "Z0153004248DQ2TZA1JUZ"
}

variable "domain_name" {
    default = "kubebuilder.space"
}