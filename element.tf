resource "aws_instance" "element" {
    ami = var.Imageid
    instance_type = var.instancetype
    key_name = var.keyname
    availability_zone = "${element(var.availabilityzone, count.index)}"
    count = 3
  iam_instance_profile =  var.iaminstance
  tags = {
    Name = "element-${count.index+1}"
    
  }
}