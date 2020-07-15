variable "securitygroupid" {
    type    = string
}

variable "keyname" { 
    type    = string
}

variable "subnetnames" {
    type    = list(string)
    default = [ "subnet1", "subnet2", "subnet3"]
}

variable "cidrrnages" {
    type    = list(string)
    default = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24"]
}

resource "aws_instance" "firstec2" {
    ami                             = "ami-003634241a8fcdec0"
    instance_type                   = "t2.micro"
    key_name                        = var.keyname
    vpc_security_group_ids          = [ var.securitygroupid ]
    associate_public_ip_address     = true
    tags                            = {
        Name                        = "firstec2"
    }
    

    depends_on                      = [ aws_s3_bucket.myfirsts3bucket]
}

resource "aws_vpc" "myfirstvpc" {
    cidr_block                      = "192.168.0.0/16"
  
}

resource "aws_s3_bucket" "myfirsts3bucket" {
    bucket                          = "skjdfhkjsah.com"

    depends_on                      = [ aws_vpc.myfirstvpc ]
  
}

resource "aws_subnet" "subnet" {
    count                           = 3

    vpc_id                          = aws_vpc.myfirstvpc.id
    cidr_block                      = var.cidrrnages[count.index]
    tags                            = {
        Name                        = var.subnetnames[count.index]
    }

    depends_on                      = [ aws_vpc.myfirstvpc ]
  
}

variable "securitygroupid" {
    type    = string
}

variable "keyname" { 
    type    = string
}

variable "subnetnames" {
    type    = list(string)
    default = [ "subnet1", "subnet2", "subnet3"]
}

variable "cidrrnages" {
    type    = list(string)
    default = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24"]
}

resource "aws_instance" "firstec2" {
    ami                             = "ami-003634241a8fcdec0"
    instance_type                   = "t2.micro"
    key_name                        = var.keyname
    vpc_security_group_ids          = [ var.securitygroupid ]
    associate_public_ip_address     = true
    tags                            = {
        Name                        = "firstec2"
    }

    depends_on                      = [ aws_s3_bucket.myfirsts3bucket]
}

resource "aws_vpc" "myfirstvpc" {
    cidr_block                      = "192.168.0.0/16"
  
}

resource "aws_s3_bucket" "myfirsts3bucket" {
    bucket                          = "skjdfhkjsah.com"

    depends_on                      = [ aws_vpc.myfirstvpc ]
  
}

resource "aws_subnet" "subnet" {
    count                           = 3

    vpc_id                          = aws_vpc.myfirstvpc.id
    cidr_block                      = var.cidrrnages[count.index]
    tags                            = {
        Name                        = var.subnetnames[count.index]
    }

    depends_on                      = [ aws_vpc.myfirstvpc ]
  
}

