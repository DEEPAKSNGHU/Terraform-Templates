variable "ami" {
  type    = string
  default = "ami-0bde1eb2c18cb2abe"

}
variable "instancetype" {
  type    = string
  default = "t2.micro"

}
variable "availabilityzone" {
  type    = string
  default = "us-east-1a"

}
variable "KeyName" {
  type    = string
  default = "punchu"

}
variable "iaminstanceprofile" {
  type    = string
  default = "TestingRole"

}


variable "testing-git" {
       type =string
       default = git
}