variable "ami_id" {
    type = string
    default = "ami-0199d4b5b8b4fde0e"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "region" {
    type = string
    default = "us-east-2"
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "terraform-demo"
        Terraform = "true"
        Project = "joindevops"
        Environment = "dev"
    }
}

variable "sg_name" {
    type = string
    default = "allow-all"
    # optional to inform what is this variable about
    description = "Security Group Name to attach to EC2 instance"
}

variable "ingress_from_port" {
    default = 0
}

variable "ingress_to_port" {
    default = 0
}

variable "protocol1" {
    type = string
    default = "-1"
}

variable "cidr1" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "egress_from_port" {
    default = 0
}

variable "egress_to_port" {
    default = 0
}

variable "protocol2" {
    type = string
    default = "-1"
}

variable "cidr2" {
    type = list
    default = ["0.0.0.0/0"]
}