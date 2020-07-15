resource "aws_instance" "firstec2" {
    ami                             = "ami-003634241a8fcdec0 "
    instance_type                   = "t2.micro"
    key_name                        = "ansible"
    vpc_security_group_ids          = [ "sg-027884179d5228a3f" ]
    associate_public_ip_address     = true
    tags                            = {
        Name                        = "firstec2"
    }
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
}
