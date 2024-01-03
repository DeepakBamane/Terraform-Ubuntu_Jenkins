resource "aws_instance" "myapp-server" {
  ami                         = "ami-03f4878755434977f"
  instance_type               = var.instance_type
  key_name                    = "Jenkins-ap-south-key"
  subnet_id                   = aws_subnet.myapp-subnet-1.id
  vpc_security_group_ids      = [aws_default_security_group.default-sg.id]
  availability_zone           = var.avail_zone
  associate_public_ip_address = true
  user_data                   = file("jenkins-server-script.sh")
  tags = {
    Name = "${var.env_prefix}-server"
  }
}
