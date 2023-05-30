resource "aws_instance" "ted-baker" {
  ami                         = var.image-id
  instance_type               = var.instancetype
  availability_zone           = "${element(var.azs, count.index)}"
  key_name                    = var.KeyName
  vpc_security_group_ids      = var.sg
  count                       = 2
  iam_instance_profile        = var.iaminstanceprofile
  associate_public_ip_address = var.associate-public-ip
  disable_api_termination     = var.terminate
  ebs_block_device {
    volume_size           = var.ebs-size
    volume_type           = var.ebs-type
    delete_on_termination = var.delete
    device_name           = var.ebs-path
    throughput            = var.ebs-throughput
  }
  tags = {

    Name      = "element-${count.index+1}"
    Callby    = var.toto
    CreatedBy = var.cyber-code
    CreatedOn = var.security-team
    Location  = var.formation

  }

}

resource "aws_eip" "lab-testing" {
  count = 2  
  vpc   = true
}

resource "aws_eip_association" "lab-testing" {
  count = 2

  instance_id   = aws_instance.ted-baker[count.index].id
  allocation_id = aws_eip.lab-testing[count.index].id
}



 