variable "image-id" {
  type    = string
  default = "ami-06a0cd9728546d178"

}
variable "instancetype" {
  type    = string
  default = "t2.micro"

}
variable "azs" {
  type    = list(string)
  default = ["us-east-1a" , "us-east-1b"]

}
variable "KeyName" {
  type    = string
  default = "DeepakSingh"
}
variable "iaminstanceprofile" {
  type    = string
  default = "TestingRole"

}
variable "sg" {
  type    = list(string)
  default = ["sg-083e1a51d9791423c", "sg-091123a4c970740f0"]

}
variable "associate-public-ip" {
  type    = bool
  default = "true"

}
variable "toto" {
  type    = string
  default = "Devops"

}
variable "cyber-code" {
  type    = string
  default = "Deepak"

}
variable "security-team" {
  type    = string
  default = "yash"

}
variable "formation" {
  type    = string
  default = "10/02/2021"

}
variable "ebs-path" {
  type    = string
  default = "/dev/xvdba"

}
variable "ebs-size" {
  type    = number
  default = "10"

}
variable "ebs-type" {
  type    = string
  default = "gp3"

}
variable "ebs-throughput" {
  type    = number
  default = "125"

}
variable "delete" {
  type    = string
  default = "true"

}
variable "yes-terminate" {
  type    = string
  default = "true"

}
variable "terminate" {
  type    = string
  default = "false"

}