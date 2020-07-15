variable "securitygroupid" {
    type    = string
}

variable "keyname" { 
    type    = string
}

variable "bucketname" {
    type    = string
    default = "yourbucketname.com" 
}

variable "regions" {
    type    = list(string),
    default = ["us-west-1", "us-west-2", "us-east-1", "us-east-2" ]
}

variable "aws_credentials" {
    type    = object( { access_key=string, secret_key=string, region=string } )
    default = {
        access_key 	= "jkashfkjdahfkajs"
        secret_key	= "klsjdflkdsjdlafs"
        region     	= "us-west-2"
    }
}
provider "aws" {
  
}

variable "securitygroupid" {
    type    = string
}

variable "keyname" { 
    type    = string
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


