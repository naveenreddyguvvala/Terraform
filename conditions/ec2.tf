resource "aws_instance" "terraform"{
ami = var.ami_id
instance_type = var.environment == "dev" ? "t2.micro" : "t2.medium"
vpc_security_group_ids = [aws_security_group.allow_all.id]
tags = {
        Name ="Terraform"
        Terraform = "true"
        Project = "roboshop"
}
}

resource "aws_security_group" "allow_all" {
  name   = "allow-all"
  egress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  ingress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  tags = {
    Name = "allow-all"
  }

}