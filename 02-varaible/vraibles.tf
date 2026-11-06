variable "ami_id" {
 type = string
 default = "ami-0055977a6e828a4f4"
 description = "Ami id if the instance"

}
variable "type_of_instance" {

    type = string
    default = "t3.micro"
    deprecated = "Type of Instance"
}

variable "ec2_tags" {

    type = map
    default        ={
       Name        = "roboshop-mongodb"
       Environment = "dev"
       Terraform   = "true"
       Project     = "roboshop"
       Component   = "mongodb-web"     
    } 
}

variable  "cidr"{

    type = list
    default = ["0.0.0.0/0"]
}

variable "from_port"{

    type = number
    default = 0


}
