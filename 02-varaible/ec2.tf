resource "aws_instance" "mongodb" {
instance_type = var.type_of_instance
ami = var.ami_id
#vpc_security_group_ids = "[aws.security_group.mongodb.id]"
 vpc_security_group_ids = [aws_security_group.mongodb.id]


tags = var.ec2_tags

}


resource "aws_security_group" "mongodb"{

name = "mongodb"
description = "Allow TLS inbound traffic and all outbound traffic"

ingress {

    from_port = var.from_port
    to_port = 0
    protocol ="-1"
    cidr_blocks = var.cidr
}


ingress {

     from_port =0
     to_port = 0
     protocol = "-1"
     cidr_blocks = var.cidr

}

tags = {
    name = "roboshop-mongodb"   


}



}