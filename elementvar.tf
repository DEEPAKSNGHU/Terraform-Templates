variable "Imageid" {
    type = string
    default = "ami-0889a44b331db0194"

}

variable "instancetype" {
    type = string
    default = "t2.micro"
  
}

variable "keyname" {
    type = string
    default = "DeepakSingh"
  
}


variable "availabilityzone" {
    type = list(string)
    default = ["us-east-1a","us-east-1b","us-east-1c"]
  
}

variable "iaminstance" {
    type = string
    default = "TestingRole"
  
}
