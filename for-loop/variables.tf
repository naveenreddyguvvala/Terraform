variable "instances" {
  default = ["mangodb", "frontend", "backend"]
  # default = {
  #     mongodb = "t3.micro"
  #     redis = "t3.micro"
  #     mysql = "t3.small"
  # }
  # default = {
  #     mongodb = {
  #         instance_type = "t3.micterraro"
  #         ami = "ami-id"
  #     }
  #     redis = "t3.micro"
  #     mysql = "t3.small"
  # }
}

variable "zone_id" {
  default = "Z035590125UALU8MTXGFT"
}

variable "domain_name" {
  default = "daws86s.life"
}