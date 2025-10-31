resource "aws_instance" "terraform"{
    ami  = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    region = var.region
    tags = var.ec2_tags 
}

resource "aws_security_group" "allow_all" {
  name   = var.sg_name

  egress {
    from_port        = var.egress_from_port # from port 0 to to port 0 means all ports
    to_port          = var.egress_to_port
    protocol         = var.protocol2 # -1 means all protocols
    cidr_blocks      = var.cidr1 # internet
  }

  ingress {
    from_port        = var.ingress_from_port # from port 0 to to port 0 means all ports
    to_port          = var.ingress_to_port 
    protocol         = var.protocol1 # -1 means all protocols
    cidr_blocks      = var.cidr2 # internet
  }

  tags = {
    Name = "allow-all"
  }

}