# Elastic IPアドレス
resource "aws_eip" "my-eip" {
  vpc = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.my-instance.id
  allocation_id = aws_eip.my-eip.id
}
