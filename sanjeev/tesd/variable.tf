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
        access_key 	= "AKIAYT2326IAHOJBXURA"
        secret_key	= "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"
        region     	= "us-west-2"
    }
}